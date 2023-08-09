using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp11
{
    public class BulkInsertExample
    {
        private readonly string connectionString;
        public BulkInsertExample(string connectionString)
        { 
            this.connectionString = connectionString;
        }

        public void BulkInsertPersons(IEnumerable<Person> persons)
        {
            using(var connection = new SqlConnection(connectionString))
            {
                connection.Open();

                //Create a data table to hold the data to bebulk inserted
                var dataTable = new DataTable();
                dataTable.Columns.Add("Id", typeof(int));
                dataTable.Columns.Add("Name", typeof(string));
                dataTable.Columns.Add("Email", typeof(string));
                dataTable.Columns.Add("GenderId", typeof(int));

                //Add Row to Data Table
                foreach (var person in persons)
                {
                    dataTable.Rows.Add(person.ID, person.Name,person.Email,person.GenderId);   
                }

                using(var bulkCopy = new SqlBulkCopy(connection))
                {
                    bulkCopy.DestinationTableName = "tblPerson";
                    bulkCopy.WriteToServer(dataTable);
                }
            }

           
        }
    }
}
