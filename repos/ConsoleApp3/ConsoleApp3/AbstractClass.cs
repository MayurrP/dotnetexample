//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace ConsoleApp3
//{
//    public class AbstractClass
//    {
//        public static void Main()
//        { 
//            AbsDerived derived = new AbsDerived();
//            int added = derived.Add(10, 29);
//            int multi = derived.MultiplyTwoNumbers(12, 34);
//            Console.WriteLine($"Addition : {added}\n Multiplication {multi}");
//        }
//    }

//    abstract class AbsClass
//    {
//        public int Add(int x, int y)
//        {
//            return x + y;
//        }
//        public abstract int MultiplyTwoNumbers(int x, int y);
//    }

//    class AbsDerived : AbsClass
//    {
//        public override int MultiplyTwoNumbers(int x, int y)
//        {
//            return x * y;
//        }
//    }
//}
