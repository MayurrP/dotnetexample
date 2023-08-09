//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace ConsoleApp6
//{
//    public class Product
//    {
//        public int Id { get; set; }
//        public string Name { get; set; }
//        public double Price { get; set; }
//        public DateTime ExpDate { get; set; }
//        public DateTime ManuDate { get; set; }
//    }

//    public class ProdMain
//    {
//        public static void Main()
//        {
//            Product[] productArr = 
//            { 
//                new Product { Id = 1,Name = "Milk",Price = 170,ExpDate = new DateTime(2022,08,12),ManuDate = new DateTime(2022,08,09)}, 
//                new Product { Id = 1,Name = "ButterMilk",Price = 129,ExpDate = new DateTime(2022,08,22),ManuDate = new DateTime(2022,08,09)}, 
//                new Product { Id = 1,Name = "Butter",Price = 200,ExpDate = new DateTime(2022,09,12),ManuDate = new DateTime(2022,08,19)}, 
//                new Product { Id = 1,Name = "Bread",Price = 180,ExpDate = new DateTime(2022,08,25),ManuDate = new DateTime(2022,08,10)}, 
//                new Product { Id = 1,Name = "Buscits",Price = 130,ExpDate = new DateTime(2022,10,02),ManuDate = new DateTime(2022,08,01)},
//            }; 
            
//            Product[] products = productArr.Where(p => p.Price > 150).ToArray();
//            foreach (Product item in products)
//            {
//                Console.WriteLine(item.Price);
//            }

//            Product[] prod = productArr.Where(p => p.Name.StartsWith('B')).ToArray();
            
//        }
//    }
//}
