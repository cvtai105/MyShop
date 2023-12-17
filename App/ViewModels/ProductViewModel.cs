using App.Contracts.ViewModels;
using BusinessLogic.Interfaces;
using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using Models;
using CommunityToolkit.Mvvm.Input;
using System.ComponentModel;
using System.Diagnostics;
using Microsoft.UI.Xaml.Controls;

namespace App.ViewModels;


public partial class ProductViewModel : ObservableRecipient, INavigationAware, INotifyPropertyChanged
{
    public ProductViewModel(IShopService repos)
    {
        SearchCommand = new RelayCommand(Search);
        _shopService = repos;
        SelectedCategory = null;
        SelectedProduct = null;
        SearchText = string.Empty;
        _selectedCategory = null;

    }

    public async void OnNavigatedTo(object parameter)
    {
        CategoryList.Clear();

        SyncProducts();

        var categories = await _shopService.CategoryService.GetAsync();

        foreach (var item in categories)
        {
            CategoryList.Add(item);
        }
    }

    //Properties
    private Category? _selectedCategory;
    public Category? SelectedCategory
    {
        get => _selectedCategory;
        set
        {
            if (_selectedCategory != value){
                _selectedCategory= value;
                SyncProducts();
            }
        }
    }

    public void OnSelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        SelectedCategory = (Category?)(sender as ListView).SelectedItem;
        
    }
    
    private string? _searchText;
    public  string? SearchText { 
        get => SearchText;
        set
        {
            _searchText = value;

        }
    }


    public Product? SelectedProduct { get; set; }
    public int? PageIndex { get; set; }
    public int PageCount { get; set; }
    public string? SortSelected { get; set; }
    public decimal? floorPriceFilter { get; set; }
    public decimal? ceilingPriceFilter { get; set; }

    //Commands
    public RelayCommand SearchCommand
    {
        get;
    }

    private void Search()
    {
        ProductList.Clear();
        foreach (var item in SelectedCategory.Products)
        {
            ProductList.Add(item);
        }
    }



    public ObservableCollection<Category> CategoryList { get; } = new ObservableCollection<Category>();
    public ObservableCollection<Product> ProductList { get; } = new ObservableCollection<Product>();
    public ObservableCollection<int> ProductPageIndex
    {
    get; } = new ObservableCollection<int>();


   


    async void SyncCategories()
    {

        CategoryList.Clear();
        var cats = await _shopService.CategoryService.GetAsync();
        foreach (var category in cats) {
            CategoryList.Add(category);
        }
    }

    async void SyncProducts() {
        SelectedProduct = null;
        SearchText = null;
 

        ProductList.Clear();
        if(SelectedCategory == null)
        {
            Debug.WriteLine("null");

            var products = await _shopService.ProductService.GetAllProductsAsync();
            foreach(var product in products)
            {
                ProductList.Add(product);
            }
        }
        else
        {
            foreach(var p in SelectedCategory.Products)
            {
                ProductList.Add(p);
            }
        }
    }

    public void OnNavigatedFrom()
    {
    }

    //singleton
    private readonly IShopService _shopService;
}
