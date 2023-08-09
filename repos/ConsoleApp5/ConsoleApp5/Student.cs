//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace ConsoleApp5
//{
//    public class Student
//    {
//        public string Name { get; set; }
//        public List<int> Grades { get; set; }

//        public Student(string name)
//        {
//            this.Name = name;
//            Grades = new List<int>();
//        }
//    }

//    public class Program
//    { 
//    public static void Main()
//    {
//            List<Student> list = new List<Student>();
//        int choice;
//        Boolean sel = true;
//            string name;
//            do
//            {
//                Console.WriteLine("1. Add a Student");
//                Console.WriteLine("2. Add a Grade");
//                Console.WriteLine("3. View Grades");
//                Console.WriteLine("4. Exit");
//                Console.WriteLine("Enter Your Choice");
//                choice = Convert.ToInt32(Console.ReadLine());
//                switch (choice)
//                {
//                    case 1:
//                        Console.WriteLine("Enter Student Name : ");
//                        name = Console.ReadLine();
//                        Student student = new Student(name);
//                        list.Add(student);
//                        foreach (var item in list)
//                        {
//                            if(item.Equals(student))
//                            {
//                                Console.WriteLine("Student Added Successfully");
//                            }
//                            else
//                            {
//                                Console.WriteLine("Student Not Added");

//                            }
//                        }
//                        break;
//                    case 2:
//                        Console.WriteLine("Enter Student Name : ");
//                        name = Console.ReadLine();

//                        foreach (Student item in list)
//                        {
//                            if (item.Name.Equals(name))
//                            {
//                                Console.WriteLine("Enter Grade");
//                                int grade = Convert.ToInt32(Console.ReadLine());
//                                item.Grades.Add(grade);
//                                Console.WriteLine("Grade Added Successfully");
//                            }
//                        }

//                        break;
//                    case 3:
//                        foreach (var item in list)
//                        {
//                            Console.WriteLine(item.Grades);
//                        }
//                        Console.WriteLine("Enter Student Name : ");
//                        name = Console.ReadLine();
                        
//                        foreach (Student item in list)
//                        {                            
//                            if (item.Name.Equals(name))
//                            {
//                                foreach (Student item1 in list)
//                                {
//                                    Console.WriteLine(item1.Grades);
//                                }


//                            }   
//                        }
//                        break;
//                    case 4:
//                        sel = false;
//                        break;
//                }
//            }
//            while(sel);

//    }
//}

//}
