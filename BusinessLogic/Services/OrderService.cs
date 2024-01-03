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
        Debug.WriteLine($"orderId: {newOrder.Id}");


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
    public async Task<IEnumerable<Order>> GetByDateAsync(DateTime start, DateTime end)
    {
        return await _repos.Orders.GetByDateAsync(start, end);
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
    public async Task<IEnumerable<decimal>> GetIncomeByDay(int count)
    {
        return await _repos.Orders.GetIncomeByDay(count);
    }
    public Task<IEnumerable<decimal>> GetIncomeByMonth(int count) => throw new NotImplementedException();
    public Task<IEnumerable<decimal>> GetIncomeByWeek(int count) => throw new NotImplementedException();
    public Task<IEnumerable<decimal>> GetIncomeByYear(int count) => throw new NotImplementedException();
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
}
