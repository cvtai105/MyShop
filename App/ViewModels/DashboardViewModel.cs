using App.Contracts.ViewModels;
using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using Models;
using BusinessLogic.Interfaces;
using BusinessLogic.Services;
using Microsoft.EntityFrameworkCore.Metadata;
using System.Diagnostics;

namespace App.ViewModels;

public partial class DashboardViewModel : ObservableRecipient, INavigationAware
{
    private readonly IShopService _shopService;

    [ObservableProperty]
    private int totalProduct = 0;
    [ObservableProperty]
    private int totalMonthOrder = 0;
    [ObservableProperty]
    private int totalWeekOrder = 0;
    public ObservableCollection<Product> TopProductOutOfStock { get; } = new ObservableCollection<Product>();
    public DashboardViewModel(IShopService repos)
    {
        _shopService = repos;
    }

    public void OnNavigatedTo(object parameter)
    {
        GetTotalProduct();
        GetTotalMonthOrder();
        GetTotalWeekOrder();
        SyncTopProductOutOfStock();

    }

    private async void GetTotalWeekOrder()
    {
        TotalWeekOrder = await _shopService.OrderService.GetCurrentWeekOrderCountAsync();
    }
    private async void GetTotalMonthOrder()
    {
        TotalMonthOrder = await _shopService.OrderService.GetCurrentMonthOrderCountAsync();
    }
    private async void GetTotalProduct()
    {
        TotalProduct = await _shopService.ProductService.GetTotalProductCountAsync(); 
    }
    private async void SyncTopProductOutOfStock()
    {
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
