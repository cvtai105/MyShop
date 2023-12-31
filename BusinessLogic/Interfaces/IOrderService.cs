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
    Task DeleteAsync(int orderId);
    Task<Order> UpsertAsync(Order order);
    Task<int> GetCurrentWeekOrderCountAsync();
    Task<int> GetCurrentMonthOrderCountAsync();
    Task<IEnumerable<decimal>> GetIncomeByDay(int count);
    Task<IEnumerable<decimal>> GetIncomeByWeek(int count);
    Task<IEnumerable<decimal>> GetIncomeByMonth(int count);
    Task<IEnumerable<decimal>> GetIncomeByYear(int count);
    Task<decimal> GetProfitByDay(int count);
    Task<decimal> GetProfitByWeek(int count);
    Task<decimal> GetProfitByMonth(int count);
    Task<decimal> GetProfitByYear(int count);
    Task<int> GetQuantiyProductSaled(int productId);
    Task<int> GetTotalOrderCount(DateTimeOffset? startDate, DateTimeOffset? endDate);
    Task<IEnumerable<Order>> QueryOrderPage(DateTimeOffset? startDate, DateTimeOffset? endDate, int pageSize, int? selectedPage);
    Task<IEnumerable<OrderDetail>> GetDetailAsync(int orderId);
}
