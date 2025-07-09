using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dairy.dairy
{
    public class FarmManager
    {
        int iD; string name; string email; string date; int phone; string address;
        string password;

        public FarmManager(int iD, string name, string email, string date, int phone, string address, string password)
        {
            this.iD = iD;
            this.name = name;
            this.email = email;
            this.date = date;
            this.phone = phone;
            this.address = address;
            this.password = password;
        }
    }
}