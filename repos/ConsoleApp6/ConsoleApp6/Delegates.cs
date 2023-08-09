//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace ConsoleApp6
//{
//    delegate void CustomDel(string s);
//    public class Delegates
//    {
//        static void Hello(string s)
//        { 
//            Console.WriteLine("Hello! "+s); 
//        }
        
//        static void GoodBye(string s)
//        {
//            Console.WriteLine("Bye Bye "+s);
//        }
//        static void Main()
//        {
//            CustomDel hiDel,byeDel,mulDel,minusHiDel;

//            hiDel = Hello;
//            byeDel = GoodBye;

//            Console.WriteLine("Invoking Hi Delegate");
//            hiDel("Mayur");
//            Console.WriteLine("Invoking Bye Delegate");
//            byeDel("Mayur");
//            mulDel = hiDel + byeDel;
//            Console.WriteLine("Invoking Multi Delegate");
//            mulDel("Radhe");

//            minusHiDel = mulDel - hiDel;
//            Console.WriteLine("Invoking MinusDel Delegate");
//            minusHiDel("Radhe");
//            Console.ReadLine();
//        }
//    }
//}
