using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using LiveChartsCore;
using LiveChartsCore.Defaults;
using LiveChartsCore.Kernel;
using LiveChartsCore.SkiaSharpView;
using LiveChartsCore.SkiaSharpView.Painting;
using LiveChartsCore.SkiaSharpView.VisualElements;
using Microsoft.UI.Xaml.Media;
using LiveChartsCore.Kernel.Drawing;
using Models;
using SkiaSharp;
using System.Diagnostics;
using LiveChartsCore.Kernel.Sketches;

namespace App.Chart;
public class LiveChartPack
{
    public ObservableCollection<ISeries> Series { get; set; } = new ();

    public LabelVisual Title { get; set; } = null!;
    public ObservableCollection<ICartesianAxis> XAxes { get; set; } = new();
    public ObservableCollection<ICartesianAxis> YAxes { get; set; } = new();
    public SolidColorPaint LegendTextPaint { get; set; } =
        new SolidColorPaint
        {
            Color = SKColors.Transparent,
            SKTypeface = SKTypeface.FromFamilyName("Courier New")
        };
    public SolidColorPaint LedgendBackgroundPaint { get; set; } 
    //public Func<ChartPoint, string> TooltipLabelFormatter { get; set; }

    //return day income chart pack
    public LiveChartPack(IEnumerable<DayIncome> values)
    {
        InitializeDayIncomeChartProperties(values);
    }

    public void InitializeDayIncomeChartProperties(IEnumerable<DayIncome> values)
    {
        SetDefaultTitle("Income By Day");
        SetXDateAxis();
        SetYIncomAxis();
        AddDayInComeLineSeries(values);
    }


    private void SetYIncomAxis()
    {
        var axis = new Axis
        {
            //axis.Labels = "Inome"; //format string
            Name = "Income (Dollars)",
            MinLimit = 0
        };
        YAxes.Add(axis);
    }
    //used for day income and week income
    public void SetXDateAxis()
    {
        XAxes.Add(new DateTimeAxis(TimeSpan.FromDays(1), date => date.ToString("d")));
    }

    //add 2 series: revenue and profit  
    public void AddDayInComeLineSeries(IEnumerable<DayIncome> values)
    {
        var data = new ObservableCollection<DateTimePoint>();
        foreach (var item in values)
        {
            data.Add(new DateTimePoint(item.OrderPlaced.Date, (double)item.Revenue));
        }

        ISeries revenueSeries = new ColumnSeries<DateTimePoint>()
        {
            Name = "Revenue",
            Stroke = null,
            Values = data
            
        };

        data = new ObservableCollection<DateTimePoint>();
        foreach (var item in values)
        {
            data.Add(new DateTimePoint(item.OrderPlaced.Date, (double)item.Profit));
        }

        ISeries profitSeries = new LineSeries<DateTimePoint>()
        {
            Name = "Profit",
            LineSmoothness = 0,
            Values = data,
            GeometrySize = 0
        };
        
        Series.Add(revenueSeries);
        Series.Add(profitSeries);
    }
    
   
    //used for month income
    public void SetMonthAxis()
    {
        var axis = new Axis
        {
            Name = "Month/Year"
        };
        //axis.LabelsRotation = 45;

    }

    public void SetYearAxis()
    {
        XAxes.Add(new DateTimeAxis(TimeSpan.FromDays(1), date => $"{date.Year}"));
    }



    public void SetDefaultTitle (string value)
    {
        Title = new LabelVisual
        {
            Text = value,
            TextSize = 25,
            Padding = new LiveChartsCore.Drawing.Padding(15),
            Paint = new SolidColorPaint(SKColors.DarkSlateGray)
        };
    }

}
