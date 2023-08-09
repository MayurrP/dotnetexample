using Microsoft.AspNetCore.Mvc;

namespace WebApplication2.Controllers
{
    public class StudentController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Students()
        {
            return View();
        }
        public IActionResult ContactUs()
        {
            return View();
        }
    }
}
