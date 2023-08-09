
//public class Employee
//{
//    public int Id { get; set; }
//    public string Name { get; set; }
//    public int Age { get; set; }
//}

//public class Program
//{
//    public static void Main()
//    {
//        Employee[] employeeArray =
//        {
//            new Employee() { Id = 1,Name = "Mayur",Age = 25},
//            new Employee() { Id = 2,Name = "Swapnil",Age = 25},
//            new Employee() { Id = 3,Name = "Pritish",Age = 27},
//            new Employee() { Id = 4,Name = "Vaibhav",Age = 18},
//            new Employee() { Id = 5,Name = "Akash",Age = 17},
//            new Employee() { Id = 6,Name = "Abhishekh",Age = 22},
//            new Employee() { Id = 7,Name = "Ram",Age = 24},
//        };

//        Employee[] employees = new Employee[10];
//        int i = 0;
//        foreach (Employee emp in employeeArray)
//        {
//            if (emp.Age > 12 && emp.Age < 25)
//            {
//                employees[i] = emp;
//                Console.WriteLine(emp.Name);
//                i++;
//            }

//        }

//        Employee[] teenEmps = employeeArray.Where(s => s.Age > 12 && s.Age <= 23).ToArray();

//        Employee akash = employeeArray.Where(s => s.Name == "Akash").FirstOrDefault();

//        Employee emp5 = employeeArray.Where(s => s.Id == 5).FirstOrDefault();

//        Console.WriteLine(employeeArray.FirstOrDefault());

//    }
//}