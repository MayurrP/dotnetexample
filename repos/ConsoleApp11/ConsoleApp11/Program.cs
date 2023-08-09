//using ConsoleApp11;
//using System;

//class Program
//{
//    static void Main()
//    {
//        string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ConsoleApp11.Data;Integrated Security=True;";
//        var personRepository = new PersonRepository(connectionString);
//        try
//        {
//            //get all people from database
//            Console.WriteLine("Get All Person Data");
//            var people = personRepository.GetAllPeople();
//            foreach (var person in people)
//            {
//                Console.WriteLine($"Id :- {person.ID} ---> Name :- {person.Name} ---> Email :- {person.Email} ---> GenderId :- {person.GenderId}");
//            }

//            //get PersonById
//            Console.WriteLine("\n\nGet Person By Id");
//            var getPeople = personRepository.GetPersonById(1);
//            Console.WriteLine($"Id :- {getPeople.ID} ---> Name :- {getPeople.Name} ---> Email :- {getPeople.Email} ---> GenderId :- {getPeople.GenderId}");


//            Console.WriteLine("\n\nInsert Data Into Person");
//            Person person1 = new Person { ID = 5, Name = "Abhishekh", Email = "abhi@gmail.com", GenderId = 1 };
//            personRepository.InsertPerson(person1);
//            Console.WriteLine($"Id :- {person1.ID} ---> Name :- {person1.Name} ---> Email :- {person1.Email} ---> GenderId :- {person1.GenderId}");
//            Console.WriteLine("new Person Inserted Successfully.");


//            //Console.WriteLine("\n\nUdate Data Into Person");
//            //var updatePeople = personRepository.GetPersonById(5);
//            //Person person2 = new Person {ID = updatePeople.ID ,Name = "Abhishekh", Email = "abhishekh@gmail.com", GenderId = 1 };
//            //personRepository.UpdatePerson(person2);
//            //Console.WriteLine($"Id :- {person2.ID} ---> Name :- {person2.Name} ---> Email :- {person2.Email} ---> GenderId :- {person2.GenderId}");

//            Console.WriteLine("\n\nUdate Data Into Person");
//            var existingPerson = personRepository.GetPersonById(5);
//            if(existingPerson != null)
//            {
//                existingPerson.Name = "Abhi";
//                personRepository.UpdatePerson(existingPerson);
//                Console.WriteLine("Person Updated Successfully");
//            }

//            //people = personRepository.GetAllPeople();
//            //foreach (var person in people)
//            //{
//            //    Console.WriteLine($"Id :- {person.ID} ---> Name :- {person.Name} ---> Email :- {person.Email} ---> GenderId :- {person.GenderId}");
//            //}

//            Console.WriteLine("\n\nDelete by Id");
//            personRepository.DeletePerson(5);
//            Console.WriteLine("Person Deleted Successfully");


//        }
//        catch (Exception ex)
//        {
//            Console.WriteLine("An error occured : " + ex.Message);
//        }
//    }
//}

using ConsoleApp11;

public class Program
{
    public static void Main()
    {
        string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=ConsoleApp11.Data;Integrated Security=True;";
        var bulkInsertExample = new BulkInsertExample(connectionString);

        try
        {
            var persons = new List<Person>()
            {
                new Person() { ID = 16, Name = "Abhishekh", Email = "abhi@gmail.com", GenderId = 1 },
                new Person() { ID = 17, Name = "Akah", Email = "akash@gmail.com", GenderId = 1 },
                new Person() { ID = 18, Name = "Vaibhav", Email = "vaibhav@gmail.com", GenderId = 1 }
            };
            bulkInsertExample.BulkInsertPersons(persons);
            Console.WriteLine("Bulk Data Insered Successfully");
            
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}