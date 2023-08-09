using AutoMapper;
using AutoMappingWebApplication19.Models;
using AutoMappingWebApplication19.ViewModel;
using Microsoft.AspNetCore.Mvc;

namespace AutoMappingWebApplication19.Controllers
{
    public class UserController : Controller
    {
        private readonly IMapper _mapper;
        public UserController(IMapper mapper)
        {
            _mapper = mapper;
        }
        public IActionResult Index()
        {
            // Populate the user details from DB
            var user = GetUserDetails();
            UserViewModel userViewModel = _mapper.Map<UserViewModel>(user);
            return View(userViewModel);
        }
        
        private static User GetUserDetails()
        {
            return new User
            {
                Id = 1,
                FirstName = "Mayur",
                LastName = "Pakhale",
                Email = "mayur@gmail.com"   

            };
        }
    }
}
