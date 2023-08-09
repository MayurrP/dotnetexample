//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace ConsoleApp3
//{
//    public class Payment
//    {
//        public static void Main()
//        {
//            Console.WriteLine("Calling Different Payment GateWay");
//            Phonepay phonepay = new Phonepay();
//            phonepay.MakePayment();
//            Gpay gpay = new Gpay();
//            gpay.MakePayment();
//            Paytm paytm = new Paytm();  
//            paytm.MakePayment();    
//        }
//    }

//    public interface IPayment 
//    {
//        public void MakePayment();
//    }

//    public class Gpay : IPayment
//    {
//        public void MakePayment()
//        {
//            Console.WriteLine("Calling Gpay Gateway");
//        }
//    }

//    public class Phonepay : IPayment
//    {
//        public void MakePayment()
//        {
//            Console.WriteLine("Calling PhonePay Gateway");
//        }
//    }

//    public class Paytm : IPayment
//    {
//        public void MakePayment()
//        {
//            Console.WriteLine("Calling Paytm Gateway");
//        }
//    }

//}
