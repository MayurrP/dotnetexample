using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp7
{
    //class Person
    //{
    //    public string Name { get; set; }
    //    public int Age { get; set; }
    //    public int CityId { get; set; }
    //}

    //class City
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
    //public class GroupByPerson
    //{
    //    public static void Main()
    //    {
    //        List<Person> people = new List<Person>
    //        {
    //            new Person{Name = "Alice",Age = 25,CityId = 1},
    //            new Person{Name = "Bob",Age = 35,CityId = 2},
    //            new Person{Name = "Charlie",Age = 40,CityId = 2},
    //            new Person{Name = "Dave",Age = 28,CityId = 3},
    //            new Person{Name = "Eve",Age = 45,CityId = 1},
    //        };

    //        List<City> cities = new List<City>
    //        {
    //            new City{Id = 1, Name = "New York"},
    //            new City{Id = 2, Name = "London"},
    //            new City{Id = 3, Name = "Paris"},
    //        };


    //        //Get the Count of people in each city

    //        Console.WriteLine("People Count By City : - ");

    //        var GroupByCity = people.GroupBy(person => person.CityId);

    //        foreach (var group in GroupByCity)
    //        {
    //            foreach (var city in cities)
    //            {
    //                if(group.Key == city.Id)
    //                {
    //                    Console.WriteLine($"City : {city.Name}, Count : {group.Count()}");
    //                }
    //            }
    //        }

    //        // Average Age By City

    //        Console.WriteLine("Average Age by City : ");

    //        GroupByCity = people.GroupBy(person => person.CityId);

    //        foreach (var group in GroupByCity)
    //        {
    //            foreach (var city in cities)
    //            {
    //                if (group.Key == city.Id)
    //                {
    //                    double avgAge = group.Average(x => x.Age);
    //                    Console.WriteLine($"City : {city.Name}, Average Age : {avgAge}");
    //                }
    //            }
    //        }

    //        Console.WriteLine("Press any Key to Exit");
    //        Console.ReadLine(); 

    //    }
    //}
}
