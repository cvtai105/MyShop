using Microsoft.EntityFrameworkCore;
using Models;
using System;
using System.Collections.Generic;
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
            .Where(o => o.OrderId == orderId)
            .ToListAsync();
    }

    public async Task<OrderDetail?> GetAsync(int id)
    {
        return await _db.OrderDetails.FindAsync(id);
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
            _db.OrderDetails.Add(record);
        }
        else
        {
            _db.Entry(existingOrderDetail).CurrentValues.SetValues(record);
        }

        await _db.SaveChangesAsync();

        return record;
    }
}
