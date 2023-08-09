using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebApplication25.Data;
using WebApplication25.Models;

namespace WebApplication25.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        public IActionResult SignUp()
        {
            return View();
        }
        public IActionResult AboutUs()
        {
            return View();
        }

        //GET: Mobiles/Details/5
        //public async Task<IActionResult> Details(string? id)
        //{
        //    if (id == null || _context.Mobile == null)
        //    {
        //        return NotFound();
        //    }

        //    var mobile = await _context.Mobile
        //        .FirstOrDefaultAsync(m => m.Name == id);
        //    if (mobile == null)
        //    {
        //        return NotFound();
        //    }

        //    return View(mobile);
        //}

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}