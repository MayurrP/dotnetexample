using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp5
{
    public class ProductDetails
    {
        List<Product> _products;

        public ProductDetails()
        {
            _products = new List<Product>();
        }

        public void AddProduct(Product product)
        {
            _products.Add(product);
        }
        public void RemoveProduct(Product product)
        {
            _products.Remove(product);
        }
        public List<Product> GetProducts()
        {
            return _products;
        }

    }
}
