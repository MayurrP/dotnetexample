using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;


public class Department
{
    public int DepartmentId { get; set; }
    public string DepartmentName { get; set; }
    public string DepartmentPhone { get; set;}
    public Department()
    {
        Console.WriteLine("Departments Default Constructor");
        this.DepartmentId = 101;
        this.DepartmentName = "CS";
    }
    public Department(int departmentId,string name)
    {
        Console.WriteLine("Departments Parametrized Constructor");
        this.DepartmentId = departmentId;
        this.DepartmentName = name;
    }
    public void PrintDepartmentDetails()
    { 
        Console.WriteLine($"Department Id : {this.DepartmentId}\n Department Name : {this.DepartmentName}"); 
    }
}

public class Employee : Department
{
    public int Id { get; set; }
    public string Name { get; set; }

    public Employee()
    {
        Console.WriteLine("Inside Employee Default Constructor");
    }

    public Employee(int id,string name)
    {
        Console.WriteLine("Inside Employee parametrized Constructor");
        this.Id = id;
        this.Name = name;
    }
    public void EmployeeDetails()
    {
        Console.WriteLine($"Employee Id : {this.Id} \n Employee Name : {this.Name}");
    }
}
