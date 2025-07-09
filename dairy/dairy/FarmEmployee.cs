using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dairy.dairy
{
    public class FarmEmployee
    {
        private int iD;
        private string name;  
        private int phone; 
        private string address;
        private string password;
        private int ID_number;

        public FarmEmployee()
        {

        }

        public int getID()
        { 
        return iD;
        }
        public string getName()
        {
            return name;
        }
        public int getId_number()
        {
            return ID_number;
        }
        public int getPhone()
        {
            return phone;
        }
        public string getAddress()
        {
            return address;
        }
        public string getPassword()
        {
            return password;
        }
        public void setID(int ID)
        {
            this.iD = ID;
        }
        public void setName(string name)
        {
            this.name=name;
        }
        public void setID_number(int ID_number)
        {
            this.ID_number = ID_number;
        }
        public void setPhone(int phone)
        {
            this.phone = phone;
        }
        public void setAddress(string address)
        {
            this.address = address;
        }
        public void setPassword(string password)
        {
            this.password = password;
        }

    }
}