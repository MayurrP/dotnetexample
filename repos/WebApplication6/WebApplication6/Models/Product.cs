using System.ComponentModel.DataAnnotations;

namespace WebApplication6.Models
{
    public class Product
    {
        [Key]
        public int Id { get;set; }
        public string ProdName { get;set; }
        public double Price { get;set; }
        public DateTime ManuDate { get;set; }
        public DateTime ExpDate { get;set;}
    }
}
