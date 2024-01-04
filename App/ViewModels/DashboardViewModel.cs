using App.Contracts.ViewModels;
using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using Models;
using BusinessLogic.Interfaces;
using LiveChartsCore.SkiaSharpView.Painting;
using LiveChartsCore.SkiaSharpView;
using LiveChartsCore;
using SkiaSharp;
using LiveChartsCore.SkiaSharpView.VisualElements;
using System.Diagnostics;
using App.Chart;

namespace App.ViewModels;



public partial class DashboardViewModel : ObservableRecipient, INavigationAware
{
    private readonly IShopService _shopService;
    private const int ChartPointCount = 20;

    [ObservableProperty]
    private LiveChartPack dayIncomeChart;
    [ObservableProperty]
    private LiveChartPack weekIncomeChart;
    public ObservableCollection<ProductSoldCount> WeekTopProductsSoldCounts { get; } = new ObservableCollection<ProductSoldCount>();
    public ObservableCollection<ProductSoldCount> MonthTopProductsSoldCounts { get; } = new ObservableCollection<ProductSoldCount>();
    public ObservableCollection<ProductSoldCount> YearTopProductsSoldCounts { get; } = new ObservableCollection<ProductSoldCount>();

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
        SyncTopProductSoldCount();
        SyncDayIncomeChart();
    }

    private async void SyncDayIncomeChart()
    {
        var data = await _shopService.OrderService.GetIncomeByDay(ChartPointCount);
        DayIncomeChart = new LiveChartPack(data);
        foreach (var s in DayIncomeChart.Series)
        {
            Debug.WriteLine(s);
        }
    }
    
    private void SyncTopProductSoldCount()
    {
        //TODO: fix a bug cannot use task.waitAll
        SyncWeekTopProductSoldCount();
        SyncMonthTopProductSoldCount();
        SyncYearTopProductSoldCount();
    }

    private async void SyncYearTopProductSoldCount()
    {
        var data = await _shopService.OrderService.GetThisYearProductSoldCountAsync();

        YearTopProductsSoldCounts.Clear();

        foreach (var item in data)
        {
            YearTopProductsSoldCounts.Add(item);
        }
    }
    private async void SyncMonthTopProductSoldCount()
    {
        var data = await _shopService.OrderService.GetThisMonthProductSoldCountAsync();

        MonthTopProductsSoldCounts.Clear();
        foreach (var item in data)
        {
            MonthTopProductsSoldCounts.Add(item);
        }
    }

    private async void SyncWeekTopProductSoldCount()
    {
        var data = await _shopService.OrderService.GetThisWeekProductSoldCountAsync();

        WeekTopProductsSoldCounts.Clear();
        foreach (var item in data)
        {
            WeekTopProductsSoldCounts.Add(item);
        }
    }


    [ObservableProperty]
    private int totalProduct = 0;
    [ObservableProperty]
    private int totalMonthOrder = 0;
    [ObservableProperty]
    private int totalWeekOrder = 0;
    public ObservableCollection<Product> TopProductOutOfStock { get; } = new ObservableCollection<Product>();

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
