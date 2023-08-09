using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;



namespace ConsoleApp6
{
    //public class SelectLinq
    //{
    //    public static void Main()
    //    {
    //        string[] names = { "Ram","Mayur","Swapnil","Abhishekh","Abhiram","Pritish","Palash","Arnav"};

    //        UsingLinq(names);
    //    }
    //    private static void UsingLinq(string[] names)
    //    {
    //        IEnumerable<string> query = from s in names
    //                                    where s.Length == 5
    //                                    orderby s
    //                                    select s.ToUpper();

    //        foreach (string name in query)
    //        {
    //            Console.WriteLine(name);   
    //        }
    //        Console.ReadLine();
    //    }
    //}


    //public class SelectLinq
    //{
    //    public static void Main()
    //    {
    //        string[] names = { "Ram", "Mayur", "Swapnil", "Abhishekh", "Abhiram", "Pritish", "Palash", "Arnav" };

    //        UsingLinq(names);
    //    }
    //    private static void UsingLinq(string[] names)
    //    {
    //        IEnumerable<string> query = names
    //                                    .Where(s => s.Length == 5)
    //                                    .OrderBy(s => s)
    //                                    .Select(s => s.ToUpper());


    //        foreach (string name in query)
    //        {
    //            Console.WriteLine(name);
    //        }
    //        Console.ReadLine();
    //    }
    //}


    //public class SelectLinq
    //{
    //    public static void Main()
    //    {
    //        string[] names = { "Ram", "Mayur", "Swapnil", "Abhishekh", "Abhiram", "Pritish", "Palash", "Arnav" };

    //        UsingLinq(names);
    //    }
    //    private static void UsingLinq(string[] names)
    //    {
    //        Func<string, bool> filter = s => s.Length == 5;
    //        Func<string, string> extract = s => s;
    //        Func<string, string> project = s => s.ToUpper();

    //        IEnumerable<string> query = names
    //                                    .Where(filter)
    //                                    .OrderBy(extract)
    //                                    .Select(project);


    //        foreach (string name in query)
    //        {
    //            Console.WriteLine(name);
    //        }
    //        Console.ReadLine();
    //    }
    //}   



    //public class SelectLinq
    //{
    //    public static void Main()
    //    {
    //        string[] names = { "Ram", "Mayur", "Swapnil", "Abhishekh", "Abhiram", "Pritish", "Palash", "Arnav" };

    //        UsingAnonymousMethod(names);
    //    }
    //    private static void UsingAnonymousMethod(string[] names)
    //    {
    //        Func<string, bool> filter = delegate (string s)
    //        {
    //            return s.Length == 5;
    //        };
    //        Func<string, string> extract = delegate (string s)
    //        {
    //            return s;
    //        };
    //        Func<string, string> project = delegate (string s)
    //        {
    //            return s.ToUpper();
    //        };

    //        IEnumerable<string> query = names
    //                                    .Where(filter)
    //                                    .OrderBy(extract)
    //                                    .Select(project);


    //        foreach (string name in query)
    //        {
    //            Console.WriteLine(name);
    //        }
    //        Console.ReadLine();
    //    }
    //}


    //public class SelectLinq
    //{
    //    public static void Main()
    //    {
    //        LinqReadXML();
    //    }
    //    private static void LinqReadXML()
    //    {
    //        string myXML = @"<Departments>
    //                        <Department>Account</Department>
    //                        <Department>Sales</Department>
    //                        <Department>Pre-Sales</Department>
    //                        <Department>Marketing</Department>
    //                        <Department>Distribution</Department>
    //                        </Departments>";

    //        XDocument xdoc = new XDocument();
    //        xdoc = XDocument.Parse(myXML);

    //        var result = xdoc.Element("Departments").Descendants();

    //        foreach (XElement item in result)
    //        {
    //            Console.WriteLine("Department Name :- "+item.Value);
    //        }
    //        Console.WriteLine("\nPress Any Key to Continue");
    //        Console.ReadLine();
    //    }
    //}



    //public class SelectLinq
    //{
    //    public static void Main()
    //    {
    //        LinqReadXML();
    //    }
    //    private static void LinqReadXML()
    //    {
    //        string myXML = @"<Departments>
    //                        <Department>Account</Department>
    //                        <Department>Sales</Department>
    //                        <Department>Pre-Sales</Department>
    //                        <Department>Marketing</Department>
    //                        <Department>Distribution</Department>
    //                        </Departments>";

    //        XDocument xdoc = new XDocument();
    //        xdoc = XDocument.Parse(myXML);

    //        xdoc.Element("Departments").Add(new XElement("Department", "Finance"));

    //        xdoc.Element("Departments").AddFirst(new XElement("Department", "Support"));

    //        var result = xdoc.Element("Departments").Descendants();

    //        foreach (XElement item in result)
    //        {
    //            Console.WriteLine("Department Name :- " + item.Value);
    //        }
    //        Console.WriteLine("\nPress Any Key to Continue");
    //        Console.ReadLine();
    //    }
    //}

    //public class SelectLinq
    //{
    //    public static void Main()
    //    {
    //        LinqReadXML();
    //    }
    //    private static void LinqReadXML()
    //    {
    //        string myXML = @"<Departments>
    //                        <Department>Account</Department>
    //                        <Department>Sales</Department>
    //                        <Department>Pre-Sales</Department>
    //                        <Department>Marketing</Department>
    //                        <Department>Distribution</Department>
    //                        </Departments>";

    //        XDocument xdoc = new XDocument();
    //        xdoc = XDocument.Parse(myXML);

    //        xdoc.Descendants().Where(s => s.Value == "Sales").Remove();

    //        var result = xdoc.Element("Departments").Descendants();

    //        foreach (XElement item in result)
    //        {
    //            Console.WriteLine("Department Name :- " + item.Value);
    //        }
    //        Console.WriteLine("\nPress Any Key to Continue");
    //        Console.ReadLine();
    //    }
    //}
}
