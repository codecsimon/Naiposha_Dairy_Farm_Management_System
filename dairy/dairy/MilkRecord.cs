using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dairy.dairy
{
    public class MilkRecord
    {
        private int ID;
        private int CowId;
        private int MilkQuantity;
        private string date;
        private string time;
        public MilkRecord()
        {
        
        }
        public int getID()
        {
            return this.ID;
        }
        public int getCowid()
        {
            return this.CowId;
        }
        public int getMilkQuantity()
        {
            return this.MilkQuantity;
        }
        public string getDate()
        {
            return this.date;
        }
        public string getTime()
        {
            return this.time;

        }
        public void setID(int ID)
        {
            this.ID = ID;
        }
        public void setCowID(int CowId)
        {
            this.CowId = CowId;
        }
        public void setMilkQuantinty(int MilkQuantinty)
        {
            this.MilkQuantity= MilkQuantinty;
        }
        public void setDate(string Date)
        {
            this.date = Date;
        }
        public void setTime (string Time)
        {
            this.time = Time;
        }
       
    }
}