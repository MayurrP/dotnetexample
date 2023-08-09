using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp7
{
    public class Employee
    { 
        public int Id { get; set; }
        public string Name { get; set; }
        public string Gender { get; set; }
        public int DeptId { get; set; }
    }

    public class Department
    {
        public int DeptId { get; set; }
        public string DepName { get; set; }
    }

    //public class EmpDept
    //{
    //    public static void Main()
    //    {
    //        List<Employee> employees = new List<Employee>
    //        {  
    //            new Employee{Id = 1,Name = "Adam", Gender = "Male", DeptId =  1},   
    //            new Employee{Id = 2,Name = "John", Gender = "Male", DeptId =  2},   
    //            new Employee{Id = 3,Name = "Ema", Gender = "Female", DeptId =  1},   
    //            new Employee{Id = 4,Name = "Victoria", Gender = "Female", DeptId =  2},   
    //            new Employee{Id = 5,Name = "Tony", Gender = "Male", DeptId =  3},   
    //            new Employee{Id = 6,Name = "Sundar", Gender = "Male", DeptId =  3},   
    //        };

    //        List<Department> depts = new List<Department>
    //        { 
    //            new Department{DeptId =  1, DepName = "Marketing"},
    //            new Department{DeptId =  2, DepName = "Sales"},
    //            new Department{DeptId =  3, DepName = "Account"},
    //        };

    //        // join collection and find the employee belonging to Particular dept
    //        Console.WriteLine("Departments wise Employee");
           

    //        var empdept = from emp in employees
    //                      join dept in depts on emp.DeptId equals dept.DeptId into empDept
    //                      where emp.DeptId == 1
    //                      select new { EmpName = emp.Name};

    //        foreach (var item in empdept)
    //        {
    //            Console.WriteLine($"{item.EmpName}");   
    //        }

    //        //Group the emp by gender for particular dept -- count of male or female emps
    //        Console.WriteLine("Departments wise Male Female Count");

    //        var groupbyDept = employees.GroupBy(dep => dep.DeptId);

    //        foreach (var group in groupbyDept)
    //        {
    //            Console.WriteLine($"Dept : {group.Key}, Count : {group.Count()}");
 
    //        }

    //        Console.ReadLine();
    //    }
    //}
}
