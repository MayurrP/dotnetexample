using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp11
{
    public class PersonRepository
    {
        private readonly string connectionString;
        public PersonRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }
        public IEnumerable<Person> GetAllPeople()
        {
            using(IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                dbConnection.Open();
                return dbConnection.Query<Person>("SELECT * FROM tblPerson");
            }
        }

        public Person GetPersonById(int id)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                dbConnection.Open();
                return dbConnection.QuerySingleOrDefault<Person>("SELECT * FROM tblPerson WHERE Id = @Id", new {Id = id});
            }
        }

        public void InsertPerson(Person person)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                string insertQuery = "INSERT INTO tblPerson (Id,Name,Email,GenderId) values(@Id,@Name,@Email,@GenderId)";
                dbConnection.Open();
                dbConnection.Execute(insertQuery, person);
            }
        }

        public void UpdatePerson(Person person)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                string updateQuery = "UPDATE tblPerson set Name = @Name ,Email = @Email ,GenderId = @GenderId WHERE Id = @Id";
                dbConnection.Open();
                dbConnection.Execute(updateQuery, person);
            }
        }

        public void DeletePerson(int id)
        {
            using (IDbConnection dbConnection = new SqlConnection(connectionString))
            {
                string deleteQuery = "DELETE FROM tblPerson WHERE Id = @Id";
                dbConnection.Open();
                dbConnection.Execute(deleteQuery, new {Id = id});
            }
        }
    }
}
