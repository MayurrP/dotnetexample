//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace ConsoleApp6
//{
//    public class ActionDelegate
//    {
//        public static void Main() 
//        {

//            Action<int> printActionDel = ConsolePrinter;
//            Action<int> printAction = PrinterPrinter;

//            printActionDel(10);
//            printAction(45);

//        }
//        public static void ConsolePrinter(int i)
//        {
//            Console.WriteLine(i);
//        }

//        public static void PrinterPrinter(int i)
//        {
//            Console.WriteLine("This is being printed to the Printer.");
//        }
//    }
//}
