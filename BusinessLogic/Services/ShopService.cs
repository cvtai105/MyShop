using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogic.Interfaces;
using Microsoft.EntityFrameworkCore;
using Repository;
using Repository.SQL;

namespace BusinessLogic.Services;
public class ShopService : IShopService
{
    readonly IMyShopRepository _shopRepository;

    public ShopService(string server, string database, string? username, string? password, bool isTrusted)
    {
        DbContextOptionsBuilder<MyShopContext>  dbOptionsBuilder;
        if (password == null)
        {
            dbOptionsBuilder = new DbContextOptionsBuilder<MyShopContext>()
            .UseSqlServer($"Server={server};Database={database};Trusted_Connection={isTrusted};");
            Debug.WriteLine(1);
        }
        else
        {
            Debug.WriteLine(2);
            dbOptionsBuilder = new DbContextOptionsBuilder<MyShopContext>()
            .UseSqlServer($"Server={server};Database={database};User Id={username};Password={password};Trusted_Connection={isTrusted};");
        }

        

        _shopRepository = new MyShopRepository(dbOptionsBuilder);

    }

    //TODO: consider pass _shopRepository by reference in following initialization
    public IProductService ProductService => new ProductService(_shopRepository);

    public ICustomerService CustomerService => throw new NotImplementedException();

    public ICategoryService CategoryService => new CategoryService(_shopRepository);

    public IOrderService OrderService => throw new NotImplementedException();
}