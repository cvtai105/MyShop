using System.Diagnostics;
using App.ViewModels;

using Microsoft.UI.Xaml.Controls;

namespace App.Views;

public sealed partial class OrderPage : Page
{
    public OrderViewModel ViewModel
    {
        get;
    }

    public OrderPage()
    {
        ViewModel = App.GetService<OrderViewModel>();
        InitializeComponent();
    }

   

    private void OnPageSizeChanged(object sender, NumberBoxValueChangedEventArgs e)
    {
        _= ViewModel.GetPageListAsync();
    }

    private void OnPageChanged(object sender, SelectionChangedEventArgs e)
    {
        _ = ViewModel.SyncOrders();
    }

    private void OnStartDateChanged(CalendarDatePicker sender, CalendarDatePickerDateChangedEventArgs args)
    {
        Debug.WriteLine("OnStartDateChanged");
        _ = ViewModel.GetPageListAsync();
    }
    private void OnEndDateChanged(CalendarDatePicker sender, CalendarDatePickerDateChangedEventArgs args)
    {
        _ = ViewModel.GetPageListAsync();
    }
}
