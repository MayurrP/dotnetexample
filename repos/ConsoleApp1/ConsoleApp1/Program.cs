//public class Program
//{
//    static void Main() // Entry Point of App
//    {
//        Console.WriteLine("What is Your Name : ");
//        string Name = Console.ReadLine();

//        Console.WriteLine("How much sleep did you have last Night ? ");
//        int hoursofSleep = Convert.ToInt32(Console.ReadLine());

//        Console.WriteLine("Hey!! " + Name);

//        if(hoursofSleep < 8)
//        {
//            Console.WriteLine("You must be feeling Tired");
//        }
//        else
//        {
//            Console.WriteLine("You seem well rested");
//        }
//    }
//}

//2. Accept two number and add

//public class Program
//{ 
//    public static void Main()
//    {
//        Console.WriteLine("Enter Number 1 : ");
//        int num1 = Convert.ToInt32(Console.ReadLine());
//        Console.WriteLine("Enter Number 2 : ");
//        int num2 = Convert.ToInt32(Console.ReadLine());
//        Console.WriteLine("Number 1 : " + num1 + "\nNumber 2 : " + num2);
//        int result = num1 + num2;
//        Console.WriteLine("Result : " + result);

//    }
//}


//2. Accept two number and Subtrct

//public class Program
//{
//    public static void Main()
//    {
//        Console.WriteLine("Subtraction ");
//        Console.WriteLine("Enter Number 1 : ");
//        int num1 = Convert.ToInt32(Console.ReadLine());
//        Console.WriteLine("Enter Number 2 : ");
//        int num2 = Convert.ToInt32(Console.ReadLine());
//        Console.WriteLine("Number 1 :  " + num1 + "\nNumber 2 : -" + num2);
//        int result = num1 - num2;
//        Console.WriteLine("Result : " + result);

//    }
//}


//public static void Main()
//{
//    Console.WriteLine("Enter Number 1 : ");
//    int num1 = Convert.ToInt32(Console.ReadLine());
//    Console.WriteLine("Enter Number 2 : ");
//    int num2 = Convert.ToInt32(Console.ReadLine());
//    Console.WriteLine("Number 1 :  " + num1 + "\nNumber 2 : " + num2);
//    int choice,result;
//    Console.WriteLine("Calculator \n 1. Add \n 2. Sub \n 3. Div \n 4. Mul");
//    Console.WriteLine("Enter the Number of Operation to Calculate : ");
//    choice = Convert.ToInt32(Console.ReadLine());
//    switch(choice)
//    {
//        case 1:
//            result = num1 + num2;
//            Console.WriteLine("Add : " + result);
//            break;
//        case 2:
//            result = num1 - num2;
//            Console.WriteLine("Sub : " + result);
//            break;
//        case 3:
//            result = num1 / num2;
//            Console.WriteLine("Div : " + result);
//            break;
//        case 4:
//            result = num1 * num2;
//            Console.WriteLine("Mul : " + result);
//            break;

//    }
//}

using ConsoleApp1;

//public class Program
//{
//    static void Main()
//    {
//        Student stud = new Student();
//        stud.FirstName = "Mayur";  //Setter
//        stud.LastName = "Pakhale";

//        // Console.WriteLine("The First Name is {0}, Last Name is {1}",stud.FirstName,stud.LastName);
//        stud.PrintFirstName();
//        stud.PrintLastName();
//    }
//}

//public class Program
//{
//    static void Main()
//    {
//        Employee emp = new Employee();
//        emp.FirstName = "Mayur";  //Setter
//        emp.LastName = "Pakhale";
//        emp.Salary = 404430;
//        emp.Address = "Viman nagar";
//        // Console.WriteLine("The First Name is {0}, Last Name is {1}",stud.FirstName,stud.LastName);
//        emp.PrintSalary();
//        emp.PrintAddress();
//    }
//}

//public class Program
//{
//    static void Main()
//    {
//        Calculator cal = new Calculator();
//        Console.WriteLine("Enter the value of Num1 : ");
//        cal.num1 = Convert.ToInt32(Console.ReadLine());
//        Console.WriteLine("Enter the value of Num2 : ");
//        cal.num2 = Convert.ToInt32(Console.ReadLine());
//        Console.WriteLine("Results \n");
//        Console.WriteLine("Addition is  "+cal.Add(cal.num1,cal.num2));
//        Console.WriteLine("Subtraction is  " + cal.Sub(cal.num1, cal.num2));
//        Console.WriteLine("Multiplication is  " + cal.Mul(cal.num1, cal.num2)); 
//        Console.WriteLine("Division is  " + cal.Div(cal.num1, cal.num2));

//    }
//}

//public class Program
//{
//    static void Increment(int i)
//    {
//        i = i + 1;
//    }
//    static void Main()
//    {
//        int x = 1; 
//        Increment(x); //Passing by value
//        Console.WriteLine("The value of x is : "+x);
//        Console.Read();

//    }
//}

//public class Program
//{
//    static void Increment(ref int i)
//    {
//        i = i + 1;
//    }
//    static void Main()
//    {
//        int x = 1;
//        Increment(ref x); //Passing by Reference
//        Console.WriteLine("The value of x is : " + x);
//        Console.Read();

//    }
//}

public class Program
{
    //static void Main()
    //{
    //    Student stud = new Student();

    //    Console.WriteLine("Parametrized Constructor");
    //    Student stud1 = new Student("Mayur","Pakhale");

    //    Student stud2 = new Student("Raman", "Roy");

    //    Student stud3 = new Student("Mayur", 25);

    //}
}