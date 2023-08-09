using AutomapperWebApi.Entites;

namespace AutomapperWebApi.service
{
    public interface IUserRepository
    {
        User CreateUser(User user);
        List<User> GetAllUser();
        User GetUserById(Guid guid);
    }
}
