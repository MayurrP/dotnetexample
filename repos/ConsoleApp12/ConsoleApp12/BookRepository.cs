using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace ConsoleApp12
{
    public class BookRepository
    {
        private readonly string connectionString;
        public BookRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        //Get all Books
        public IEnumerable<Book> GetAllBooks()
        {
            using(IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                dbConnection.Open();
                return dbConnection.Query<Book>("SELECT * FROM Books");
            }
        }

        //Get by Id
        public Book GetBookById(int id)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                dbConnection.Open();
                return dbConnection.QuerySingleOrDefault<Book>("SELECT * FROM Books WHERE BookId = @Id",new {Id = id});
            }
        }

        //Insert Book Data
        public void InsertBook(Book book)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                string insertQuery = "INSERT INTO Books(Title,Author,PublicationYear,ISBN,Genre,Price,InStock) values" +
                    "(@Title,@Author,@PublicationYear,@ISBN,@Genre,@Price,@InStock)";
                dbConnection.Open();
                dbConnection.Execute(insertQuery, book);
            }
        }

        public void UpdateBook(Book book)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                string updateQuery = "UPDATE Books set Title = @Title,Author = @Author,PublicationYear = @PublicationYear,ISBN= @ISBN," +
                    "Genre=@Genre,Price=@Price,InStock=@InStock WHERE BookId = @BookId";
                dbConnection.Open();
                dbConnection.Execute(updateQuery, book);
            }
        }

        public void DeleteBook(int id)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                string deleteQuery = "DELETE FROM Books WHERE BookId = @Id";
                dbConnection.Open();
                dbConnection.Execute(deleteQuery, new { Id = id });
            }
        }

        public IEnumerable<Book> getBookWithAuthorDetails()
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                var sql = @"SELECT BookId,Title,AuthorId,Author,Age FROM Books INNER JOIN tblAuthor on Author = AuthorName";
               
                IEnumerable<Book> books = dbConnection.Query<Book,Authors,Book>(sql,
                    (book , author) =>
                    {
                        book.authors = author;
                        return book;

                    },splitOn: "Author");
                return books;
            }
        }


    }
}
