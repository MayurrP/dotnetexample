using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


    public class ExerciseAccount
    {
        public int AccountId { get; set; }
        public double Balance { get; set; }
        public string CustomerName { get; set; } 
        public string CustomerAddress { get; set; }

        public ExerciseAccount(int accountId, double balance, string name,string address)
        {
            this.AccountId = accountId;
            this.Balance = balance;
            this.CustomerName = name;
            this.CustomerAddress = address;  
            
            Console.WriteLine(accountId+" "+ balance+" "+name+" "+address);
        }

        public Double GetAccountBalance(double bal)
        { 
            return this.Balance = bal; 
        }

        public void GetAccountAddress()
        {
            Console.WriteLine(this.CustomerAddress);
        }
    }
