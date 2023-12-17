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
}
