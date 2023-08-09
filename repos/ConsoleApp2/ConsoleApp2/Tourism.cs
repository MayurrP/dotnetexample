using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


class Tourism
{
    public string LocationName { get; set; }
    public int NumberOfSpots { get; set; }
    public Tourism()
    {
        Console.WriteLine("Tourism Default Constructor");
        this.LocationName = "Pune";
        this.NumberOfSpots = 100;
    }

    public void TourDetails()
    {
        Console.WriteLine($"Tourist Place : {this.LocationName} \n Number of Spots : {this.NumberOfSpots}");
    }
}

class Bus : Tourism
{
    public int Capacity { get; set; }
    public Bus()
    {
        Console.WriteLine("Bus Default Constructor");
        this.Capacity = 50;
    }
    public void BusDetails()
    {
        Console.WriteLine("Number of Passenges : "+this.Capacity );
    }
}

class Passenger : Bus
{
    public int TicketNo { get; set; }
    public string Name { get; set; }

    public Passenger()
    {
        Console.WriteLine("Default Constructor of Passenger");
        this.TicketNo = 001;
        this.Name = "Mark";
    }
    public void PassengerDetails()
    {
        Console.WriteLine($"Ticket N0 : {TicketNo}\n Passenger Name : {Name}");
    }
}

