using System;
using System.Collections;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;


namespace ConsoleApp5
{
    //public class File
    //{
    //    public static void Main()
    //    {
    //        string filePath = "example.txt";
    //        string content = "This is the content that will be written to the file";

    //        using(StreamWriter writer = new StreamWriter(filePath))
    //        {
    //            writer.WriteLine(content);
    //        }
    //        Console.WriteLine(filePath);
    //        Console.ReadLine();
    //    }
    //}


    //class Program
    //{
    //    static void Main()
    //    {
    //        string drivePath = @"C:";
    //        string fileName = "file.txt";
    //        string filePath = Path.Combine(drivePath, fileName);

    //        try
    //        {

    //            using (FileStream fileStream = File.Create(filePath))
    //            {

    //                string content = "Hello, World!";
    //                byte[] bytes = System.Text.Encoding.UTF8.GetBytes(content);
    //                fileStream.Write(bytes, 0, bytes.Length);
    //            }

    //            Console.WriteLine("File created successfully!");
    //        }
    //        catch (Exception ex)
    //        {
    //            Console.WriteLine("An error occurred: " + ex.Message);
    //        }
    //    }
    //}
}

class SortLi
{
    public static void Main()
    {
        SortedList sortlist = new SortedList();
        sortlist.Add(2, "Two");
        sortlist.Add(4, "Four");
        sortlist.Add(3, "Three");
        sortlist.Add(5, "Five");
        sortlist.Add(1, "One");
        foreach (var item in sortlist.Values)
        {
            Console.WriteLine(item);   
        }

        SortedList sortlist1 = new SortedList();
        sortlist1.Add("Two",2);
        sortlist1.Add("Four",4);
        sortlist1.Add("Three",3);
        sortlist1.Add("Five",5);
        sortlist1.Add("One",1);

        Console.ReadLine();
    }
}