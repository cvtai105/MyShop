using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models;
public class DayIncome
{
    DateTime Date { get; set; }
    decimal Revenue { get; set; }
    decimal Profit { get; set; }
}

public class WeekIncome
{
    DateTime StartWeek { get; set; }
    decimal Revenue { get; set; }
    decimal Profit { get; set; }
}

public class MonthIncome
{
    int Month { get; set; }
    decimal Revenue { get; set; }
    decimal Profit { get; set; }
}

public class YearIncome
{
    int Year { get; set; }
    decimal Revenue { get; set; }
    decimal Profit { get; set; }
}