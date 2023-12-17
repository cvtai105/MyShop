using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository;

public interface IProductRepository
{
 
    Task<IEnumerable<Product>> GetAsync();

    Task<Product> GetAsync(int id);

    Task<IEnumerable<Product>> GetAsync(string value);

    Task<IEnumerable<Product>> GetByCategoryAsync(int categoryid);


    Task<int> GetTotalCountAsync();

    Task<IEnumerable<Product>> TopRunningOutOfStockAsync(int topCount);

 
    Task<Product> UpsertAsync(Product product);

    Task DeleteAsync(int productId);

    Task<IEnumerable<Product>> GetByPriceAsync(int floor, int ceil);
}
