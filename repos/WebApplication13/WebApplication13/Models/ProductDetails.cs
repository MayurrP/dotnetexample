namespace WebApplication13.Models
{
    public interface IProductDetails
    {
        public List<Product> GetProducts();
    }
    public class ProductDetails : IProductDetails
    {
        public List <Product> GetProducts()
        {
            var products = new List<Product>()
            {
                new Product() { Id = 1, Name = "Milk",Price = 60},
                new Product() { Id = 2, Name = "ButterMilk",Price = 40},
                new Product() { Id = 3, Name = "Butter",Price = 100},
                new Product() { Id = 4, Name = "Pav",Price = 46}
            };
            return products;
        }
    }
}
