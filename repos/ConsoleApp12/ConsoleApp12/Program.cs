
using ConsoleApp12;
using System.Data.SqlClient;
using System.Data;
using static System.Reflection.Metadata.BlobBuilder;

public class Program
{
    static void Main()
    {

        string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Exercise;Integrated Security=True;";
        var bookRepository = new BookRepository(connectionString);

        try
        {
            //get all books from database
            //Console.WriteLine("Get All Books Data");
            //var bookDetails = bookRepository.GetAllBooks();
            //foreach (var books in bookDetails)
            //{
            //    Console.WriteLine($"BookId :- {books.BookId} ---> Book Name :- {books.Title} ---> Author :- {books.Author} ---> Book Price :- {books.Price} InStock :- {books.InStock}");
            //}

            ////get Book by Id
            //Console.WriteLine("\n\nGet Book Details By Id");
            //var getBook = bookRepository.GetBookById(2);
            //Console.WriteLine($"BookId :- {getBook.BookId} ---> Book Name :- {getBook.Title} ---> Author :- {getBook.Author} ---> Book Price :- {getBook.Price} InStock :- {getBook.InStock}");

            //Insert new Book
            //Book newbook = new Book()
            //{
            //    Title = "Let us C",
            //    Author = "Dennis Ritche",
            //    PublicationYear = 1996,
            //    ISBN = "453463656",
            //    Genre = "Third",
            //    Price = 450,
            //    InStock = 1
            //};
            //Console.WriteLine("Insert into Book");
            //bookRepository.InsertBook(newbook);
            //Console.WriteLine("New Book Inserted");

            //Update Books
            //Console.WriteLine("Update Books");
            //var existingBook = bookRepository.GetBookById(5);
            //if(existingBook != null)
            //{
            //    existingBook.Title = "Java";
            //    existingBook.Author = "NagaChaitnya";
            //    bookRepository.UpdateBook(existingBook);
            //    Console.WriteLine("Updated Successfully");
            //}

            //Delete Book by Id 
            //Console.WriteLine("Delete Book By BookId");
            //bookRepository.DeleteBook(6);
            //Console.WriteLine("Book Deleted From Database");

            var details = bookRepository.getBookWithAuthorDetails();
            foreach (var books in details)
            {
                Console.WriteLine($"BookId :- {books.BookId} ---> Book Name :- {books.Title} ---> Author Id :- {books.authors.AuthorId} ---> Author Name :- {books.authors.AuthorName} Author Age :- {books.authors.Age}");
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
    }
}