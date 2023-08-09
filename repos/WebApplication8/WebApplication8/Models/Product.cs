using System.ComponentModel.DataAnnotations;

namespace WebApplication8.Models
{
    public class Product
    {
        [Key]
        public int Id { get; set; }
        public string ProductName { get; set; }
        public double Price { get; set; }
        [DataType(DataType.Date)] 
        public DateTime ManuDate { get; set; }
        [DataType(DataType.Date)]

        public DateTime ExpDate { get; set; }

        public ICollection<Order> Orders { get; set; }
    }

    public class Order
    {
        [Key]
        public int OrderId { get; set; }
        public double Total { get; set; }
        public ICollection<Product> Products { get; set; }
    }
}
