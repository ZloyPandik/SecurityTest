using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Carcas
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new HotelsPage());
            Manager.MainFrame = MainFrame;
        }

        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                BtnBack.Visibility = Visibility.Visible;
                BtnEnter.Visibility = Visibility.Visible;
            }
            else
            {
                BtnBack.Visibility = Visibility.Hidden;
                BtnEnter.Visibility = Visibility.Hidden;
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show($"Вы точно хоите вернуться в меню? Все несохраненные данные будут утеряны", "Внимание!"
               , MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                Manager.MainFrame.GoBack();
            }
                
        }
        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Данные Сохранены!");
        }
    }
}
