using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication13.Models;

namespace WebApplication13.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        IProductDetails m_productDetails;
        public ProductController(IProductDetails productDetails)
        {
            m_productDetails = productDetails;
        }
        [HttpGet]
        public IEnumerable<Product> Get()
        {
            return m_productDetails.GetProducts();
        }
    }
}
