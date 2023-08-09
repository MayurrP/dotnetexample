using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    public class ProductController : Controller
    {
        public string Index()
        {
            return "This is Product Action";
        }
        public string ProductName()
        {
            return "The Product is Butter";
        }
        public string ProductPrice()
        {
            return "Price is 60$";
        }
        public string Brand()
        {
            return "The Product Brand is Amul";
        }
    }
}
