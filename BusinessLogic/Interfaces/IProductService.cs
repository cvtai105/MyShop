using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace BusinessLogic.Interfaces;

public interface IProductService
{
    Task<IEnumerable<Product>> GetAllProductsAsync();

    Task<Product> GetProductByIdAsync(int id);

    Task<IEnumerable<Product>> GetProductsByNameAsync(string value);

    Task<IEnumerable<Product>> GetProductsByCategoryAsync(int categoryId);

    Task<int> GetTotalProductCountAsync();

    Task<IEnumerable<Product>> GetTopRunningOutOfStockAsync(int topCount);

    Task<Product> UpsertProductAsync(Product product);

    Task DeleteProductAsync(int productId);

    Task<IEnumerable<Product>> GetProductsByPriceRangeAsync(int floor, int ceil);
}
