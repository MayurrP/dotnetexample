using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp7
{
    //enum Gender
    //{
    //    Male,
    //    Female
    //}

    //class Person
    //{
    //    public string Name { get; set; }
    //    public int Age { get; set; }
    //    public string City { get; set; }
    //    public Gender Gender { get; set; }
    //}
    //public class LinqPerson
    //{
    //    public static void Main(string[] args)
    //    {
    //        List<Person> person = new List<Person>
    //                              {
    //                                new Person { Name = "Alice", Age = 25, City = "New York", Gender = Gender.Female },
    //                                new Person { Name = "Bob", Age = 35, City = "London", Gender = Gender.Male },
    //                                new Person { Name = "Charlie", Age = 40, City = "Paris", Gender = Gender.Male },
    //                                new Person { Name = "Dave", Age = 28, City = "Berlin", Gender = Gender.Male },
    //                                new Person { Name = "Eve", Age = 45, City = "Tokyo", Gender = Gender.Female }
    //                              };

    //        AgeAndMale(person);

    //        double avgAge = person.Average(x => x.Age);
    //        Console.WriteLine(avgAge);

    //        MaxAge(person);

    //        // Use LINQ to find the oldest person
    //        Person oldestPerson = person.OrderByDescending(person => person.Age).First();
    //        Console.WriteLine($"Oldest Person: {oldestPerson.Name} ({oldestPerson.Age} years old)");

    //        //Group People by City

    //          var groupByCity = person.GroupBy(person => person.City);

    //        // Display the Group
    //        foreach (var group in groupByCity)
    //        {
    //            Console.WriteLine($"City : - {group.Key}");
    //            foreach (Person p in group)
    //            {
    //                Console.WriteLine($"- {p.Name}  ({p.Age} year old)");
    //            }
    //        }

    //    }
    //    // Age > 30 and Gender Male
    //    static void AgeAndMale(List<Person> person)
    //    {
    //        IEnumerable<Person> query = from per in person
    //                                    where per.Age > 30 && per.Gender == Gender.Male
    //                                    select per;

    //        foreach (Person item in query)
    //        {
    //            Console.WriteLine(item.Name);      
    //        }
    //    }

    //    // Max Age
    //    static void MaxAge(List<Person> person)
    //    {
    //        IEnumerable<Person> query = from p in person
    //                                    where p.Age == person.Max(x => x.Age)
    //                                    select p;

    //        Console.WriteLine("oldest Age");
    //        foreach (Person item in query)
    //        {
    //            Console.WriteLine(item.Age);
    //        }
    //    }
    //}
}
