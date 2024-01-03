using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository;

public interface IOrderDetailRepository
{
    
    Task<IEnumerable<OrderDetail>> GetByOrderAsync(int orderId);

    Task<OrderDetail?> GetAsync(int id);

    Task<OrderDetail> UpsertAsync(OrderDetail record);

    Task DeleteAsync(int id);

    Task DeleteByOrder(int orderId);

    Task InsertAsync(OrderDetail orderDetail);

    Task<IEnumerable<DayIncome>> GetDayIncomes();
    Task<IEnumerable<WeekIncome>> GetWeekIncomes();
    Task<IEnumerable<MonthIncome>> GetMonthIncomes();
    Task<IEnumerable<YearIncome>> GetYearIncomes();

    Task<IEnumerable<ProductDaySelledCount>> GetDaySelledCounts(int productId);
    Task<IEnumerable<ProductWeekSelledCount>> GetWeekSelledCounts(int productId);
    Task<IEnumerable<ProductMonthSelledCount>> GetMonthSelledCounts(int productId);
    Task<IEnumerable<ProductYearSelledCount>> GetYearSelledCounts(int productId);

    Task<IEnumerable<ThisWeekProductSelledCount>> GetTopSellingProductsThisWeek(int count);
    Task<IEnumerable<ThisMonthProductSelledCount>> GetTopSellingProductsThisMonth(int count);
    Task<IEnumerable<ThisYearProductSelledCount>> GetTopSellingProductsThisYear(int count);
}
