using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Exercise2ReverseFNLN
    {
        static void Main()
        {
            Console.WriteLine("Enter First Name : ");
            string FirstName = Console.ReadLine();
            Console.WriteLine("Enter Last Name : ");
            string LastName = Console.ReadLine();
            string Name = FirstName+" "+ LastName;
            string[] str = Name.Split(" ");
            string reverse = "";
            foreach (string str2 in str)
            {
                reverse = str2+" "+ reverse;
            }
            Console.WriteLine("Reverse of First Name and Lasr Name is : ");
            Console.WriteLine(reverse);
    }
            
        
    }
}
