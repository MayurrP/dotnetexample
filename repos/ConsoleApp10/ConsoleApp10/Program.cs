using Microsoft.EntityFrameworkCore;

using ConsoleApp10;

using (var dbContext = new EmployeeDetailsDBContext())
{
 List<EmployeeDetails> emps = dbContext.EmployeeDetails.FromSqlRaw("EXEC SPEmployeeDeptDetails").ToList();

    foreach (var emp in emps)
    {
        Console.WriteLine($"Employees : {emp.Id} ---> {emp.Name} ---> {emp.Salary} ---> {emp.Department}");
    }
}