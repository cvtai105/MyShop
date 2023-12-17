using Microsoft.EntityFrameworkCore;
using Models;
using System;
using System.Collections.Generic;
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

    public async Task<IEnumerable<OrderDetail>> GetDetailAsync(int orderId)
    {
        var order = await _db.Orders
            //.Include(o => o.OrderDetails)
            .FirstOrDefaultAsync(o => o.Id == orderId);

        return order?.OrderDetails ?? Enumerable.Empty<OrderDetail>();
    }

    public async Task<IEnumerable<Order>> GetForCustomerAsync(int customerId)
    {
        return await _db.Orders
            .Where(o => o.CustomerId == customerId)
            .ToListAsync();
    }

    public async Task<int> GetTotalMonthOrder() => throw new NotImplementedException();
    public Task<int> GetTotalWeekOrder() => throw new NotImplementedException();

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
