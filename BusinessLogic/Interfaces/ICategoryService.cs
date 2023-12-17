
using Models;

namespace BusinessLogic.Interfaces;
public interface ICategoryService
{
    Task<IEnumerable<Category>> GetAsync();

    Task<Category?> GetAsync(int CategoryId);

    Task<IEnumerable<Category>> GetAsync(string search);

    Task<IEnumerable<Product>> GetProductsAsync(int Id);

    Task<Category> UpsertAsync(Category Category);

    Task DeleteAsync(int CategoryId);


}
