using AutomapperWebApi.DTO;

namespace AutomapperWebApi.Profile
{
    public class MappingProfile : AutoMapper.Profile
    {
        public MappingProfile()
        {
            CreateMap<Entites.User, UserReadDto>()
               .ForMember(
                   dest => dest.FullName,
                   opt => opt.MapFrom(nms => $"{nms.FirstName} {nms.LastName}"));


            CreateMap<UserCreateDto, Entites.User>();
        }
    }
}
