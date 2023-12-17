
using BusinessLogic.Interfaces;
using Models;
using Repository;

namespace BusinessLogic.Services;
public class CategoryService : ICategoryService
{
    private readonly IMyShopRepository _repos;

    public CategoryService(IMyShopRepository repos)
    {
        _repos = repos;
    }

    public async Task DeleteAsync(int categoryId)
    {
        // Add your logic to delete a category by ID
        await _repos.Categories.DeleteAsync(categoryId);
    }

    public async Task<IEnumerable<Category>> GetAsync()
    {
        // Retrieve all categories
        return await _repos.Categories.GetAsync();
    }

    public async Task<Category?> GetAsync(int categoryId)
    {
        // Retrieve a category by ID
        return await _repos.Categories.GetAsync(categoryId);
    }

    public async Task<IEnumerable<Category>> GetAsync(string search)
    {
        // Retrieve categories based on a search criteria
        return await _repos.Categories.GetAsync(search);
    }

    public async Task<IEnumerable<Product>> GetProductsAsync(int categoryId)
    {
        // Retrieve products for a specific category
        return await _repos.Products.GetByCategoryAsync(categoryId);
    }

    public async Task<Category> UpsertAsync(Category category)
    {
        // Add your logic to upsert (insert or update) a category
        return await _repos.Categories.UpsertAsync(category);
    }
}
