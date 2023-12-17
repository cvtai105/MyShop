using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace BusinessLogic.Interfaces;
public interface IOrderService
{
    Task<IEnumerable<Order>> GetAsync();


    Task<IEnumerable<OrderDetail>> GetDetailAsync(int orderId);

    Task<IEnumerable<Order>> GetByDateAsync(DateTime start, DateTime end);

    Task<IEnumerable<Order>> GetForCustomerAsync(int customerId);

    Task<int> GetTotalWeekOrder();

    Task<int> GetTotalMonthOrder();

    Task<Order> UpsertAsync(Order order);

    Task DeleteAsync(int orderId);
}
