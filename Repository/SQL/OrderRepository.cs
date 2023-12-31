using Microsoft.EntityFrameworkCore;
using Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository.SQL;

public class OrderRepository : IOrderRepository
{
    private readonly MyShopContext _db;

    public OrderRepository(MyShopContext db)
    {
        _db = db ?? throw new ArgumentNullException(nameof(db));
    }

    public async Task DeleteAsync(int orderId)
    {
        var orderToDelete = await _db.Orders.FindAsync(orderId);

        if (orderToDelete != null)
        {
            _db.Orders.Remove(orderToDelete);
            await _db.SaveChangesAsync();
        }
    }

    public async Task<IEnumerable<Order>> GetAsync()
    {
        return await _db.Orders
            .ToListAsync();
    }

    public async Task<IEnumerable<Order>> GetByDateAsync(DateTime start, DateTime end)
    {
        return await _db.Orders
            .Where(o => o.OrderPlaced >= start && o.OrderPlaced <= end)
            
            .ToListAsync();
    }

    public Task<int> GetCurrentMonthOrderCount() => throw new NotImplementedException();
    public Task<int> GetCurrentMonthOrderCountAsync() => throw new NotImplementedException();
    public Task<int> GetCurrentWeekOrderCount() => throw new NotImplementedException();
    public Task<int> GetCurrentWeekOrderCountAsync() => throw new NotImplementedException();

    public async Task<IEnumerable<OrderDetail>> GetDetailAsync(int orderId)
    {
        var order = await _db.Orders
            //.Include(o => o.OrderDetails)
            .FirstOrDefaultAsync(o => o.Id == orderId);

        return order?.OrderDetails ?? Enumerable.Empty<OrderDetail>();
    }

    public Task<IEnumerable<decimal>> GetIncomeByDay(int count) => throw new NotImplementedException();

    public async Task<int> GetTotalMonthOrder()
    {
        return await _db.Orders
            .Where(o => o.OrderPlaced.Month == DateTime.Now.Month)
            .CountAsync();
    }

    public async Task<int> GetTotalOrderCount(DateTime? startDate, DateTime? endDate)
    {
        var query = _db.Orders
            .Where(od => (!startDate.HasValue || od.OrderPlaced >= startDate) &&
                            (!endDate.HasValue || od.OrderPlaced <= endDate));
        return await query.CountAsync();
        ;
    }
    public Task<int> GetTotalWeekOrder() => throw new NotImplementedException();
    public async Task<IEnumerable<Order>> QueryOrderPage(DateTime? startDate, DateTime? endDate, int pageSize, int selectedPage)
    {
        var query = _db.Orders
            .Where(o => (!startDate.HasValue || o.OrderPlaced >= startDate) && (!endDate.HasValue || o.OrderPlaced <= endDate));
        var position = (selectedPage - 1) * pageSize;
        return await query.OrderByDescending(o => o.OrderPlaced).Skip(position).Take(pageSize).Include(o => o.Customer).Include(o => o.OrderDetails).ToListAsync();
    }

    public async Task<Order> UpsertAsync(Order order)
    {
        if (order == null)
        {
            throw new ArgumentNullException(nameof(order));
        }

        var existingOrder = await _db.Orders.FindAsync(order.Id);

        if (existingOrder == null)
        {
            // Insert new order
            _db.Orders.Add(order);
        }
        else
        {
            // Update existing order
            _db.Entry(existingOrder).CurrentValues.SetValues(order);
        }

        await _db.SaveChangesAsync();

        return order;
    }

}
