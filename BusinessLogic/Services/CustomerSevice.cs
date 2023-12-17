using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogic.Interfaces;
using Models;

namespace BusinessLogic.Services;
public class CustomerSevice : ICustomerService
{
    public Task DeleteAsync(int customerId) => throw new NotImplementedException();
    public Task<IEnumerable<Customer>> GetAsync() => throw new NotImplementedException();
    public Task<IEnumerable<Customer>> GetAsync(string search) => throw new NotImplementedException();
    public Task<Customer> GetAsync(int id) => throw new NotImplementedException();
    public Task<IEnumerable<Order>> GetOrdersAsync(int cusId) => throw new NotImplementedException();
    public Task<Customer> UpsertAsync(Customer customer) => throw new NotImplementedException();
}
