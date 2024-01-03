﻿using App.Contracts.ViewModels;
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

namespace App.ViewModels;



public partial class DashboardViewModel : ObservableRecipient, INavigationAware
{
    private readonly IShopService _shopService;
    const int ChartPointCount = 20;
    public ObservableCollection<decimal> DayRevenueList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<decimal> WeekRevenueList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<decimal> MonthRevenueList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<decimal> YearRevenueList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<decimal> DayProfitList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<decimal> WeekProfitList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<decimal> MonthProfitList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<decimal> YearProfitList { get; } = new ObservableCollection<decimal>();
    public ObservableCollection<ProductSelledCount> WeekTopProductsSelledCounts { get; } = new ObservableCollection<ProductSelledCount>();
    public ObservableCollection<ProductSelledCount> MonthTopProductsSelledCounts { get; } = new ObservableCollection<ProductSelledCount>();
    public ObservableCollection<ProductSelledCount> YearTopProductsSelledCounts { get; } = new ObservableCollection<ProductSelledCount>();

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
        SyncTopProductSelledCount();
    }

    private void SyncTopProductSelledCount()
    {
        SyncWeekTopProductSelledCount();
        SyncMonthTopProductSelledCount();
        SyncYearTopProductSelledCount();
    }

    private async void SyncYearTopProductSelledCount()
    {
        var data = await _shopService.OrderService.GetThisYearProductSelledCountAsync();
        Debug.WriteLine(data.Count());

        YearTopProductsSelledCounts.Clear();

        foreach (var item in data)
        {
            YearTopProductsSelledCounts.Add(item);
        }
    }
    private async void SyncMonthTopProductSelledCount()
    {
        var data = await _shopService.OrderService.GetThisMonthProductSelledCountAsync();
        Debug.WriteLine(data.Count());

        MonthTopProductsSelledCounts.Clear();
        foreach (var item in data)
        {
            MonthTopProductsSelledCounts.Add(item);
        }
    }

    private async void SyncWeekTopProductSelledCount()
    {
        var data = await _shopService.OrderService.GetThisWeekProductSelledCountAsync();
        Debug.WriteLine(data.Count());

        WeekTopProductsSelledCounts.Clear();
        foreach (var item in data)
        {
            WeekTopProductsSelledCounts.Add(item);
        }
    }

    public ISeries[] Series
    {
        get; set;
    } =
    {
        new LineSeries<double>
        {
            Values = new double[] { 2, 1, 3, 5, 3, 4, 6 },
            Fill = null
        }
    };

    public LabelVisual Title
    {
        get; set;
    } =
        new LabelVisual
        {
            Text = "My chart title",
            TextSize = 25,
            Padding = new LiveChartsCore.Drawing.Padding(15),
            Paint = new SolidColorPaint(SKColors.DarkSlateGray)
        };

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
