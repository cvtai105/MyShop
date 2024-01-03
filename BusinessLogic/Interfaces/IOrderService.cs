using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace BusinessLogic.Interfaces;
public interface IOrderService
{
    Task<IEnumerable<Order>> GetAllAsync();

    // delete order and all order details
    Task DeleteAsync(int orderId);
    
    // update or insert. if update, delete all order details and re-insert
    Task UpsertOrder(Order order);
    Task<IEnumerable<OrderDetail>> GetOrderDetails(int orderId);
    Task<int> GetCurrentWeekOrderCountAsync();
    Task<int> GetCurrentMonthOrderCountAsync();

    /// <param name="count"> number of lastest day income will be include to the result </param>
    Task<IEnumerable<decimal>> GetIncomeByDay(int count);

    /// <param name="count"> number of lastest week income will be include to the result </param>
    Task<IEnumerable<decimal>> GetIncomeByWeek(int count);

    /// <param name="count"> number of lastest month income will be include to the result </param>
    Task<IEnumerable<decimal>> GetIncomeByMonth(int count);

    /// <param name="count"> number of lastest year income will be include to the result </param>
    Task<IEnumerable<decimal>> GetIncomeByYear(int count);

    /// <param name="count"> number of lastest day profit will be include to the result </param>
    Task<decimal> GetProfitByDay(int count);

    /// <param name="count"> number of lastest week profit will be include to the result </param>
    Task<decimal> GetProfitByWeek(int count);

    /// <param name="count"> number of lastest month profit will be include to the result </param>
    Task<decimal> GetProfitByMonth(int count);

    /// <param name="count"> number of lastest year profit will be include to the result </param>
    Task<decimal> GetProfitByYear(int count);

    // get total quantity of a product saled
    Task<int> GetQuantiyProductSaled(int productId);
    Task<int> GetTotalOrderCount(DateTimeOffset? startDate, DateTimeOffset? endDate);

    // get orders by date, pagesize, page
    Task<IEnumerable<Order>> QueryOrderPage(DateTimeOffset? startDate, DateTimeOffset? endDate, int pageSize, int? selectedPage);
}
