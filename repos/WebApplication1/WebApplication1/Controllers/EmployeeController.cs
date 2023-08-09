using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    public class EmployeeController : Controller
    {
        public string Index()
        {
            return "This is Employee Action";
        }
        public string Salary()
        {
            return "The Salary is 50K";
        }
        public string CompanyName()
        {
            return "The Company Name is Jet2 Travel Technologies";
        }
    }
}
