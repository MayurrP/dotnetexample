using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

public class Aeroplane
{   
    public int AeroplaneID;

    public Aeroplane()
    {
        this.AeroplaneID = 001;
        Console.WriteLine("Aeroplane Default Constructor");
    }
    public void AeroplaneDatails()
    {
        Console.WriteLine($"Aeroplane Id : {this.AeroplaneID}");
    }
}

public class IndiGo : Aeroplane
{
    public int FlightCapcity { get; set; }

    public IndiGo()
    {
        Console.WriteLine("Default Construtor of IndiGo");
        this.FlightCapcity = 100;
    }
    public void IndiGoDetails()
    {
        Console.WriteLine($"IndiGo Capacity {this.FlightCapcity}");
    }
}

public class GoAir : Aeroplane
{
    public int FlightCapcity { get; set; }

    public GoAir()
    {
        Console.WriteLine("Default Construtor of IndiGo");
        this.FlightCapcity = 100;
    }
    public void GoAirDetails()
    {
        Console.WriteLine($"GoAir Capacity {this.FlightCapcity}");
    }
}

public class DomesticFlight : IndiGo
{
    public string Source { get; set; }
    public string Destination { get; set; }
    public DomesticFlight()
    {
        Console.WriteLine("Default Constructor of DomesticFlight");
        this.Source = "Pune";
        this.Destination = "Delhi";
    }
    public void DomesticFlightDetails()
    {
        Console.WriteLine($"Source : {this.Source}\n Destination : {this.Destination}");
    }
}

public class InternationalFlight : IndiGo
{
    public string Source { get; set; }
    public string Destination { get; set; }
    public InternationalFlight()
    {
        Console.WriteLine("Default Constructor of InternationalFlight");
        this.Source = "Pune,India";
        this.Destination = "California,USA";
    }
    public void InterNationalFlightDetails()
    {
        Console.WriteLine($"Source : {this.Source}\n Destination : {this.Destination}");
    }
}

public class Pailot : GoAir
{
    public int Id { get; set; }
    public string Name { get; set; }

    public Pailot()
    {
        Console.WriteLine("Default Constructor of Pailot");
        this.Id = 011;
        this.Name = "Mark";
    }
    public void PailotDetails()
        {
        Console.WriteLine($"Pailot Id : {this.Id} \n Pailot Name : {this.Name}");
        }
}

public class CabinStaff : GoAir
{
    public int Id { get; set; }
    public string Name { get; set; }

    public CabinStaff()
    {
        Console.WriteLine("Default Constructor of Pailot");
        this.Id = 021;
        this.Name = "John";
    }
    public void CabinStaffDetails()
    {
        Console.WriteLine($"CabinStaff Id : {this.Id} \n CabinStaff Name : {this.Name}");
    }
}
