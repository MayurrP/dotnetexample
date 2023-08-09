using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//namespace ConsoleApp5
//{
//    public class Table
//    {
//        public static void Main()
//        {
//            Console.WriteLine("Enter the Number for Table : ");
//            int n = Convert.ToInt32(Console.ReadLine());
//            int mul;
//            Console.WriteLine($"Table of {n}"); 

//            for(int i = 0; i <= 10; i++)
//            {
//                mul = i * n;
//                Console.WriteLine($"{n} * {i} = {mul}");
//            }
//        }
//    }
//}



//public class Plot
//{
//    public static void Main()
//    {
//        City city = new City();
//        string name = city.Location("Pune");
//        double squarefeet = city.Area(30, 50);
//        Console.WriteLine($"Name of City : {name} \nSquare Feet Area : {squarefeet}");
//    }
//}

//public abstract class PlotBase
//{
//    public string Location(string place)
//    {
//        return place;
//    }
//    public abstract double Area(int length, int breadth);
//}

//public class City : PlotBase
//{
//    public override double Area(int length, int breadth)
//    {
//        return length * breadth;
//    }
//}

//public class OddNumber
//{
//    public static void Main()
//    {
//        Console.WriteLine("Odd Numbers");
//        for (int i = 1; i <= 99; i++)
//        {
//            if(i%2 != 0)
//            {
//                Console.Write(i+"  ");  
//            }
//        }
//    }
//}



//public class Alphabet
//{
//    public static void Main()
//    {
//        Console.WriteLine("How many character u want to store ");
//        int num = Convert.ToInt32(Console.ReadLine());

//        char[] ch = new char[num];
//        char temp;
//        Console.WriteLine($"Enter {num} Characters");
//        for(int i = 0; i < num; i++)
//        {
//            ch[i] = Convert.ToChar(Console.ReadLine());
//        }
//        for (int i = 0; i < num; i++)
//        {
//            for (int j = i + 1; j < num; j++)
//            {
//                if (ch[i] > ch[j])
//                { 
//                    temp = ch[i];
//                    ch[i] = ch[j];
//                    ch[j] = temp;
//                }
//            }
//        }

//        Console.WriteLine("After Sorting");
//        for (int i = 0; i < num; i++)
//        {
//            Console.Write(ch[i]+"  ");

//        }
//    }
//}
