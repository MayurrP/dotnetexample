using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp5
{
    public class Product
    {
        public int Id { get; set; }
        public string ProdName { get; set; }
        public DateTime ExpDate { get; set; }
        public DateTime ManuDate { get; set; }
        public double Price { get; set; }

        public Product(int id, string name, DateTime exdate, DateTime mfgdate, double price)
        {
            this.Id = id;
            this.ProdName = name;
            this.ExpDate = exdate;
            this.ManuDate = mfgdate;
            this.Price = price;
        }
    }
    
}
    