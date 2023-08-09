using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication13.Models;

namespace WebApplication13.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        IEmployeeDetails m_employeeDetails;
        public EmployeeController(IEmployeeDetails employeeDetails)
        {
            m_employeeDetails = employeeDetails;
        }
        //GET : api/<EmployeeController>
        [HttpGet]
        public IEnumerable<Employee> Get()
        {
            return m_employeeDetails.GetEmployees();
        }
    }
}
