using AutoMapper;
using AutoMappingWebApplication19.Models;
using AutoMappingWebApplication19.ViewModel;

namespace AutoMappingWebApplication19
{
    public class UserProfile : Profile
    {
        public UserProfile()
        {
            CreateMap<User, UserViewModel>();
        }
    }
}
