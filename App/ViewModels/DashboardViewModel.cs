using App.Contracts.ViewModels;
using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using Models;
using BusinessLogic.Interfaces;
using BusinessLogic.Services;
using Microsoft.EntityFrameworkCore.Metadata;

namespace App.ViewModels;

public partial class DashboardViewModel : ObservableRecipient, INavigationAware
{
    private readonly IShopService _shopService;
    public ObservableCollection<Product> TopProductOutOfStock { get; } = new ObservableCollection<Product>();

    //TODO: property change event here
    public int TotalProduct { get; set; }
    public int TotalWeekOrder { get; set; }
    public int TotalMonthOrder { get; set; }

    public DashboardViewModel(IShopService repos)
    {
        TotalMonthOrder = 0;
        TotalWeekOrder = 0;
        TotalProduct = 0;
        _shopService = repos;
    }

    public async void OnNavigatedTo(object parameter)
    {
        TotalProduct = await _shopService.ProductService.GetTotalProductCountAsync();
        //TotalWeekOrder = await _shopRepos.Orders.TotalWeekOrder();
        //TotalMonthOrder = await _shopRepos.Orders.TotalMonthtOrder();

        TopProductOutOfStock.Clear();

        var data = await _shopService.ProductService.GetTopRunningOutOfStockAsync(5);

        foreach (var item in data)
        {
            TopProductOutOfStock.Add(item);
        }
    }

    public void OnNavigatedFrom()
    {
    }
}
