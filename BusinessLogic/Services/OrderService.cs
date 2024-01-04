using System.Diagnostics;
using BusinessLogic.Interfaces;
using Models;
using Repository;

namespace BusinessLogic.Services;
public class OrderService : IOrderService
{
    private readonly IMyShopRepository _repos;

    public async Task UpsertOrder(Order order)
    {

        if (order.CustomerId == -1)
        {
            order.CustomerId = null;
        }

        var newOrder = await _repos.Orders.UpsertAsync(order);


        //TODO: convert to ForEachAsync
        foreach (var item in order.OrderDetails)
        {
            var item2 = item.Clone();
            item2.OrderId = newOrder.Id;
            try
            {
                await _repos.OrderDetails.InsertAsync(item2);
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.InnerException);
            }
        }
    }
    public OrderService(IMyShopRepository repos)
    {
        _repos = repos;
    }
    public async Task DeleteAsync(int orderId)
    {
        await _repos.Orders.DeleteAsync(orderId);
    }

    public async Task<IEnumerable<Order>> GetAllAsync()
    {
        return await _repos.Orders.GetAsync();
    }
    public async Task<int> GetCurrentWeekOrderCountAsync()
    {
        return await _repos.Orders.GetCurrentWeekOrderCount();
    }
    public async Task<int> GetCurrentMonthOrderCountAsync()
    { 
        return await _repos.Orders.GetCurrentMonthOrderCount();
    }
    public async Task<IEnumerable<OrderDetail>> GetOrderDetails(int orderId)
    {
        return await _repos.OrderDetails.GetByOrderAsync(orderId);
    }
    public async Task<IEnumerable<DayIncome>> GetIncomeByDay(int count)
    {
        var data = await _repos.OrderDetails.GetDaysIncome();
        var sorted = new List<DayIncome>(data);

        //sort from now to past
        sorted.Sort((a, b) => b.OrderPlaced.CompareTo(a.OrderPlaced));

        //fill in missing days
        var result = new List<DayIncome>();
        var date = DateTime.Today;
        var flag = 0;
       

        while(flag < sorted.Count)
        {
            while(sorted[flag].OrderPlaced < date)
            {
                result.Insert(0,new DayIncome() { OrderPlaced = date, Profit = 0, Revenue = 0 });
                date = date.AddDays(-1);
            }
            result.Insert(0,sorted[flag]);
            date = date.AddDays(-1);
            flag++;
        }
        //var size = result.Count;
        //result.RemoveRange(0, size-count); //retain only count lastest days
        return result;
    }
    public async Task<IEnumerable<MonthIncome>> GetIncomeByMonth(int count)
    {
        var data = await _repos.OrderDetails.GetMonthsIncome();
        var sorted = new List<MonthIncome>(data);
        sorted.Sort((a, b) => b.Year==a.Year?b.Month.CompareTo(a.Month) : b.Year.CompareTo(a.Year));

        var result = new List<MonthIncome>();
        var date = DateTime.Today;
        var flag = 0;
        while(flag < sorted.Count)
        {
            while(sorted[flag].Year < date.Year || (sorted[flag].Year == date.Year && sorted[flag].Month < date.Month))
            {
                result.Insert(0, new MonthIncome() { Year = date.Year, Month = date.Month, Profit = 0, Revenue = 0 });
                date = date.AddMonths(-1);
            }
            result.Insert(0, sorted[flag]);
            date = date.AddMonths(-1);
            flag++;
        }

        return result;
    }
    public async Task<IEnumerable<WeekIncome>> GetIncomeByWeek(int count)
    {
        var data = await _repos.OrderDetails.GetWeeksIncome();
        var sorted = new List<WeekIncome>(data);

        //sort from now to past
        sorted.Sort((a, b) => b.StartOfWeek.CompareTo(a.StartOfWeek));

        //fill in missing week
        var result = new List<WeekIncome>();
        var date = DateTime.Today.AddDays(-1 * (int)(DateTime.Today.DayOfWeek));
        var flag = 0;

        while (flag < sorted.Count)
        {
            while (sorted[flag].StartOfWeek < date)
            {
                result.Insert(0, new WeekIncome() { StartOfWeek = date, Profit = 0, Revenue = 0 });
                date = date.AddDays(-7);
            }   
            result.Insert(0, sorted[flag]);
            date = date.AddDays(-7);
            flag++;
        }
        return result;
    }
    public Task<IEnumerable<YearIncome>> GetIncomeByYear(int count) => throw new NotImplementedException();
    public Task<decimal> GetProfitByDay(int count) => throw new NotImplementedException();
    public Task<decimal> GetProfitByMonth(int count) => throw new NotImplementedException();
    public Task<decimal> GetProfitByWeek(int count) => throw new NotImplementedException();
    public Task<decimal> GetProfitByYear(int count) => throw new NotImplementedException();
    public Task<int> GetQuantiyProductSaled(int productId) => throw new NotImplementedException();
    public async Task<int> GetTotalOrderCount(DateTimeOffset? startDate, DateTimeOffset? endDate)
    {
        DateTime? p1;
        if (startDate == null)
        {
            p1 = null;
        }
        else
        {
            p1 = startDate.Value.DateTime;
        }
        DateTime? p2;
        if (endDate == null)
        {
            p2 = null;
        }
        else
        {
            p2 = endDate.Value.DateTime;
        }
        return await _repos.Orders.GetTotalOrderCount(p1, p2);
    }
    public async Task<IEnumerable<Order>> QueryOrderPage(DateTimeOffset? startDate, DateTimeOffset? endDate, int pageSize, int? selectedPage)
    {
        selectedPage ??= 1;
        DateTime? p1;
        if(startDate == null)
        {
            p1 = null;
        }
        else
        {
            p1 = startDate.Value.DateTime;
        }
        DateTime? p2;
        if(endDate == null)
        {
            p2 = null;
        }
        else
        {
            p2 = endDate.Value.DateTime;
        }
        return await _repos.Orders.QueryOrderPage(p1, p2, pageSize, (int)selectedPage);
    }

    public async Task<IEnumerable<ProductSoldCount>> GetThisWeekProductSoldCountAsync()
    {
        return  await _repos.OrderDetails.GetTopSellingProductsThisWeek(3);
    }
    public async Task<IEnumerable<ProductSoldCount>> GetThisYearProductSoldCountAsync()
    {
        return await _repos.OrderDetails.GetTopSellingProductsThisYear(3);
    }
    public async Task<IEnumerable<ProductSoldCount>> GetThisMonthProductSoldCountAsync()
    {
        return await _repos.OrderDetails.GetTopSellingProductsThisMonth(3);
    }
}
