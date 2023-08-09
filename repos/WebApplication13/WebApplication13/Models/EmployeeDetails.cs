namespace WebApplication13.Models
{
    public interface IEmployeeDetails
    {
        public List<Employee> GetEmployees();
    }
    public class EmployeeDetails : IEmployeeDetails
    {
        public List <Employee> GetEmployees()
        {
            var employees = new List<Employee>()
            {
                new Employee()
                {
                    ID = 1,
                    Title = "Mr",
                    Name = "Simon",
                    Age = 32,
                    EmailId = "simon@mailinator.com",
                    MobileNumber = 123456,
                    Address = "Pune",
                    PinCode = 411057
                },
                new Employee()
                {
                    ID = 2,
                    Title = "Mr",
                    Name = "David",
                    Age = 35,
                    EmailId = "David@mailinator.com",
                    MobileNumber = 65434345,
                    Address = "Mumbai",
                    PinCode = 221011
                },
                new Employee()
                {
                    ID = 3,
                    Title = "Mr",
                    Name = "Peter",
                    Age = 29,
                    EmailId = "Peter@mailinator.com",
                    MobileNumber = 56757585,
                    Address = "Luckmow",
                    PinCode = 221100
                }
            };
            return employees;
        }
    }
}
