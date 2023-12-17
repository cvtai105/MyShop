using Models;
using Microsoft.EntityFrameworkCore;

namespace Repository.SQL;

public class ProductRepository : IProductRepository
{
    public ProductRepository(MyShopContext db)
    {
        _db = db;
    }

    private readonly MyShopContext _db;

    public async Task DeleteAsync(int productId)
    {
        var product = await _db.Products.FirstOrDefaultAsync(p => p.Id == productId);
        if (null != product)
        {
            _db.Products.Remove(product);
            await _db.SaveChangesAsync();
        }
    }

    public async Task<IEnumerable<Product>> GetAsync()
    {
        return await _db.Products
        .AsNoTracking().Include(p => p.Category)
        .ToListAsync();
    }

    public async Task<IEnumerable<Product>> GetAsync(string value)
    {
        return await _db.Products
        .Where(p => p.Name.Contains(value, StringComparison.OrdinalIgnoreCase)).Include(p => p.Category)
        .ToListAsync();
    }

    public async Task<IEnumerable<Product>> GetByPriceAsync(int floor, int ceil)
    {
        return await _db.Products.Where(product =>
           product.SalePrice >= floor && product.SalePrice <= ceil)
       .AsNoTracking().Include(p => p.Category)
       .ToListAsync();
    }

    public async Task<int> GetTotalCountAsync()
    {
        return  await _db.Products.CountAsync();
    }

    public async Task<Product> UpsertAsync(Product product)
    {
        var existingProduct = await _db.Products.FirstOrDefaultAsync(p => p.Id == product.Id);

        if (existingProduct == null)
        {
            _db.Products.Add(product);
        }
        else
        {
            _db.Entry(existingProduct).CurrentValues.SetValues(product);
        }

        await _db.SaveChangesAsync();

        return product;
    }

    public async Task<IEnumerable<Product>> GetByCategoryAsync(int categoryId)
    {
        return await _db.Products.Where(product => product.CategoryId == categoryId)
            .AsNoTracking().Include(p => p.Category)
            .ToListAsync();
    }


    public Task<Product> GetAsync(int id)
    {
        throw new NotImplementedException();
    }

    public async Task<IEnumerable<Product>> TopRunningOutOfStockAsync(int topCount)
    {
        var productsRunningOutOfStock = await _db.Products
        .OrderBy(p => p.Quantity)
        .Take(topCount).Include(p => p.Category)
        .ToListAsync();

        return productsRunningOutOfStock;
    }
}
