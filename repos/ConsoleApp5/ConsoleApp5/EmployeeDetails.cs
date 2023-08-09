using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp5
{
    public class EmployeeDetails
    {
        List<Employee> _employees;
        public EmployeeDetails() 
        {
            _employees = new List<Employee>();
        }

        public void AddEmployee(Employee employee)
        {
            _employees.Add(employee);
        }

        public void RemoveEmployee(Employee employee)
        {
            _employees.Remove(employee);
        }

        public List<Employee> GetEmployees()
        {
            return _employees;
        }
    }
}
