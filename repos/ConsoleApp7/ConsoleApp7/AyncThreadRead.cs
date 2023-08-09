using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp7
{
    //public class AyncThreadRead
    //{
    //    static async Task Main()
    //    {
    //        Console.WriteLine("Starting asynchronous operation......");

    //        string fileContent = await ReadFileAsync(Path.Combine(AppDomain.CurrentDomain.BaseDirectory,"example.txt"));

    //        Console.WriteLine("Asynchronous Operation Completed.");
    //        Console.WriteLine($"File Content : {fileContent}");

    //        Console.WriteLine("Press any key to Exit.");
    //        Console.ReadKey();
    //    }
    //    static async Task<string> ReadFileAsync(string filepath)
    //    {
    //        try
    //        {
    //            using (StreamReader reader = new StreamReader(filepath))
    //            {
    //                string content = await reader.ReadToEndAsync();
    //                return content;
    //            }
    //        }
    //        catch(Exception ex) 
    //        {
    //            Console.WriteLine($"Error reading file : {ex.Message}");
    //            return string.Empty;
    //        }
    //    }
    //}

    // C# program for async and awai
    //public class GFG
    //{

    //    static void Main()
    //    {

    //        Demo();
    //        Console.ReadLine();

    //    }

    //    public static void Demo()
    //    {
    //        var watch = new System.Diagnostics.Stopwatch();
    //        watch.Start();

    //        var task1 = StartSchoolAssembly();
    //        var task2 = TeachClass12();
    //        var task3 = TeachClass11();


    //        Task.WaitAll(task1, task2, task3);
    //        watch.Stop();
    //        Console.WriteLine($"Execution Time:{ watch.ElapsedMilliseconds}ms");


    //    }


    //    public static async Task StartSchoolAssembly()
    //    {
    //        await Task.Run(() =>
    //        {
    //            Thread.Sleep(8000);
    //            Console.WriteLine("School Started");
    //        });
    //    }


    //    public static async Task TeachClass12()
    //    {
    //        await Task.Run(() =>
    //        {
    //            Thread.Sleep(3000);
    //            Console.WriteLine("Taught class 12");
    //        });


    //    }

    //    public static async Task TeachClass11()
    //    {
    //        await Task.Run(() =>
    //        {
    //            Thread.Sleep(2000);
    //            Console.WriteLine("Taught class 11");
    //        });


    //    }

    //}

}
