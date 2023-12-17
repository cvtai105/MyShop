using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogic.Interfaces;
using Models;

namespace BusinessLogic.Services;
public class OrderService : IOrderService
{
    public Task DeleteAsync(int orderId) => throw new NotImplementedException();
    public Task<IEnumerable<Order>> GetAsync() => throw new NotImplementedException();
    public Task<IEnumerable<Order>> GetByDateAsync(DateTime start, DateTime end) => throw new NotImplementedException();
    public Task<IEnumerable<OrderDetail>> GetDetailAsync(int orderId) => throw new NotImplementedException();
    public Task<IEnumerable<Order>> GetForCustomerAsync(int customerId) => throw new NotImplementedException();
    public Task<int> GetTotalMonthOrder() => throw new NotImplementedException();
    public Task<int> GetTotalWeekOrder() => throw new NotImplementedException();
    public Task<Order> UpsertAsync(Order order) => throw new NotImplementedException();
}
