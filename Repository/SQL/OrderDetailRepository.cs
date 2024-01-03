using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.SQL;

public class OrderDetailRepository : IOrderDetailRepository
{

    private readonly MyShopContext _db;

    public OrderDetailRepository(MyShopContext db)
    {
        _db = db ?? throw new ArgumentNullException(nameof(db));
    }

    public async Task DeleteAsync(int id)
    {
        var orderDetailToDelete = await _db.OrderDetails.FindAsync(id);

        if (orderDetailToDelete != null)
        {
            _db.OrderDetails.Remove(orderDetailToDelete);
            await _db.SaveChangesAsync();
        }
    }

    public async Task<IEnumerable<OrderDetail>> GetByOrderAsync(int orderId)
    {
        return await _db.OrderDetails
            .Where(o => o.OrderId == orderId).Include(o => o.Product)
            .ToListAsync();
    }

    public async Task<OrderDetail?> GetAsync(int id)
    {
        return await _db.OrderDetails.Include(o => o.Product)
            .FirstOrDefaultAsync(o => o.Id == id);
    }

    public async Task<OrderDetail> UpsertAsync(OrderDetail record)
    {
        if (record == null)
        {
            throw new ArgumentNullException(nameof(record));
        }

        var existingOrderDetail = await _db.OrderDetails.FindAsync(record.OrderId);

        if (existingOrderDetail == null)
        {
            Debug.WriteLine(record);
            _db.OrderDetails.Add(record); //??
        }
        else
        {
            _db.Entry(existingOrderDetail).CurrentValues.SetValues(record);
        }

        await _db.SaveChangesAsync();

        return record;
    }

    public Task DeleteByOrder(int orderId) => throw new NotImplementedException();
    public async Task InsertAsync(OrderDetail orderDetail)
    {
        await _db.OrderDetails.AddAsync(orderDetail);

        await _db.SaveChangesAsync();
        Debug.WriteLine("OrderDetail added");
    }

    public Task<IEnumerable<DayIncome>> GetDayIncomes() => throw new NotImplementedException();
    public Task<IEnumerable<WeekIncome>> GetWeekIncomes() => throw new NotImplementedException();
    public Task<IEnumerable<MonthIncome>> GetMonthIncomes() => throw new NotImplementedException();
    public Task<IEnumerable<YearIncome>> GetYearIncomes() => throw new NotImplementedException();
    public Task<IEnumerable<ProductDaySelledCount>> GetDaySelledCounts(int productId) => throw new NotImplementedException();
    public Task<IEnumerable<ProductWeekSelledCount>> GetWeekSelledCounts(int productId) => throw new NotImplementedException();
    public Task<IEnumerable<ProductMonthSelledCount>> GetMonthSelledCounts(int productId) => throw new NotImplementedException();
    public Task<IEnumerable<ProductYearSelledCount>> GetYearSelledCounts(int productId) => throw new NotImplementedException();
    public async Task<IEnumerable<ProductSelledCount>> GetTopSellingProductsThisWeek(int count)
    {
        return await _db.ThisWeekProductSelledCounts.FromSqlRaw("exec GetTopSellingProductsCurrentWeek").ToListAsync();

    }
    public async Task<IEnumerable<ProductSelledCount>> GetTopSellingProductsThisMonth(int count)
    {
        return await _db.ThisWeekProductSelledCounts.FromSqlRaw("exec GetTopSellingProductsCurrentMonth").ToListAsync();
    }
    public async Task<IEnumerable<ProductSelledCount>> GetTopSellingProductsThisYear(int count)
    {
        return await _db.ThisWeekProductSelledCounts.FromSqlRaw("exec GetTopSellingProductsCurrentYear").ToListAsync();
    }
}
