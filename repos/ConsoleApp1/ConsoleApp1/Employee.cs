using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Employee
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get;set; }
        public double Salary { get; set; }
        public string Department { get; set; }

        public void PrintSalary()
        {
            Console.WriteLine("Salary is : {0}",Salary);
        }

        public void PrintAddress()
        {
            Console.WriteLine("Address is {0}",Address);
        }
    }
}
