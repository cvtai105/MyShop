using Models;

namespace Repository;

public interface IOrderRepository
{
  
    Task<IEnumerable<Order>> GetAsync();
    Task<IEnumerable<OrderDetail>> GetDetailAsync(int orderId);
    Task<Order> UpsertAsync(Order order);
    Task DeleteAsync(int orderId);
    Task<IEnumerable<Order>> GetByDateAsync(DateTime start, DateTime end);
    Task<int> GetCurrentWeekOrderCount();
    Task<int> GetCurrentMonthOrderCount();
    Task<int> GetCurrentMonthOrderCountAsync();
    Task<int> GetCurrentWeekOrderCountAsync();
    Task<IEnumerable<decimal>> GetIncomeByDay(int count);
    Task<IEnumerable<Order>> QueryOrderPage(DateTime? startDate, DateTime? endDate, int pageSize, int selectedPage);
    Task<int> GetTotalOrderCount(DateTime? startDate, DateTime? endDate);
}
