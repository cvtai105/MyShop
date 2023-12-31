using System;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Data;
using Models;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace App.Dialog;
/// <summary>
/// An empty window that can be used on its own or navigated to within a Frame.
/// </summary>
public sealed partial class CategoryEditDialog : ContentDialog
{
    public Category EdittingCategory;
    public CategoryEditDialog(Category selected)
    {
        InitializeComponent();

        EdittingCategory = new()
        {
            Name = selected.Name,
        };
        Binding binding = new()
        {
            Source = EdittingCategory,
            Path = new PropertyPath("Name"),
            Mode = BindingMode.TwoWay
        };

        CategoryNameTextBox.SetBinding(TextBox.TextProperty, binding);
    }
}

