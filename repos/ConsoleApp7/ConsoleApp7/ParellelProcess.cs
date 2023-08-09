using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp7
{
    //public class ParellelProcess
    //{
    //    public static void Main()
    //    {
    //        int[] numbers = { 1, 2, 3, 4,5,6,7,8,9,10};

    //        //perform parallel processing
    //        Parallel.For(0,numbers.Length, i =>
    //        {
    //            int result = ProcessNumber(numbers[i]);
    //            Console.WriteLine($"Result for number  {numbers[i]} : {result}");
    //        });
    //        Console.WriteLine("Parallel Processing Completed. ");
    //        Console.Read();
    //    }
    //    static int ProcessNumber(int number)
    //    {
    //        Task.Delay(1000).Wait();
    //        return number * 2;
    //    }
    //}



    //public class ParellelProcess
    //{
    //    public static void Main()
    //    {
    //        List<string> names = new List<string> { "Mayur","Swapnil", "Rajan","Kalyani","Aijaj" };
            
    //        //perform parallel processing
    //        Parallel.ForEach(names, name =>
    //        {
    //            string result = ProcessName(name);
    //            Console.WriteLine($"Processed Name :  {result}");
    //        });
    //        Console.WriteLine("Parallel Processing Completed. ");
    //        Console.ReadKey();
    //    }
    //    static string ProcessName(string names)
    //    {
    //        Task.Delay(1000).Wait();
    //        return names.ToUpper();
    //    }
    //}   


}
