using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Student
    {
        static Student()
        {
            Console.WriteLine("This is Static Constructor");
        }
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Location { get; set; }
        public string Address { get; set; }
        public int Age { get; set; }

        public void PrintFirstName()
        {
            Console.WriteLine(FirstName);
        }

        public void PrintLastName()
        {
            Console.WriteLine(LastName);
        }
        public Student()
        { 
            Console.WriteLine("Default Constructor\n");
        }
        public Student(string FN, string LN)
        { 
            this.FirstName = FN;
            this.LastName = LN; 
            Console.WriteLine(this.FirstName + " " + this.LastName);
        }

        public Student(string FN,int age)
        {
            this.FirstName =FN;
            this.Age    = age;
            Console.WriteLine(this.FirstName + "  " + this.Age);
        }
    }
}
