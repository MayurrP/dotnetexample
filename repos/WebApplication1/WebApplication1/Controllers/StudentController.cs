using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    public class StudentController : Controller
    {
        public string Index()
        {
            return "This is Index Action";
        }

        public string FirstName()
        {
            return "The First Name is Mayur";
        }

        public string LastName()
        {
            return "The Last Name is Pakhale";
        }
    }
}
