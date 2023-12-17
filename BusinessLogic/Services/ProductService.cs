using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogic.Interfaces;
using Models;
using Repository;
using Repository.SQL;

namespace BusinessLogic.Services;
public class ProductService : IProductService
{
    private readonly IMyShopRepository _repos;
    public ProductService(IMyShopRepository repos)
    {
        _repos = repos;
    }
    
    public async Task<IEnumerable<Product>> GetAllProductsAsync()
    {
        return await _repos.Products.GetAsync();
    }

    public async Task<Product> GetProductByIdAsync(int id)
    {
        return await _repos.Products.GetAsync(id);
    }

    public async Task<IEnumerable<Product>> GetProductsByNameAsync(string value)
    {
        return await _repos.Products.GetAsync(value);
    }

    public async Task<IEnumerable<Product>> GetProductsByCategoryAsync(int categoryId)
    {
        return await _repos.Products.GetByCategoryAsync(categoryId);
    }

    public async Task<int> GetTotalProductCountAsync()
    {
        return await _repos.Products.GetTotalCountAsync();
    }

    public async Task<IEnumerable<Product>> GetTopRunningOutOfStockAsync(int topCount)
    {
        return await _repos.Products.TopRunningOutOfStockAsync(topCount);
    }

    public async Task<Product> UpsertProductAsync(Product product)
    {
       
        if (product == null)
        {
            throw new ArgumentNullException(nameof(product), "Product cannot be null");
        }

        if (string.IsNullOrEmpty(product.Name))
        {
            throw new ArgumentException("Product name cannot be empty", nameof(product.Name));
        }

        // You can add more validation as needed

        return await _repos.Products.UpsertAsync(product);
    }

    public async Task DeleteProductAsync(int productId)
    {
        _ = await _repos.Products.GetAsync(productId) ?? throw new ArgumentException($"Product with ID {productId} not found.", nameof(productId));

        await _repos.Products.DeleteAsync(productId);
    }

    public async Task<IEnumerable<Product>> GetProductsByPriceRangeAsync(int floor, int ceil)
    {
        return await _repos.Products.GetByPriceAsync(floor, ceil);
    }
}
