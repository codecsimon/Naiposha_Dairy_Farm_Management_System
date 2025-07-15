using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dairy.dairy
{
    public class SickReport
    {
        private int ID;
        private int CowID;
        private string Symptom;
        private string Report_time;
        private string Date;

        public SickReport() { 
        }
        public int getID()
        {
            return ID;
        }
        public int getCowID()
        {
            return CowID;
        }
        public string getSymptom()
        {
            return Symptom;
        }
        public string getReport_time()
        {
            return Report_time;
        }
        public string getDate()
        {
            return Date;
        }
        public void setID(int Id)
        {
            this.ID = Id;
        }
        public void setCow_id(int CowID)
        {
            this.CowID = CowID;
        }
        public void setSymptom(string Symptom)
        {
            this.Symptom = Symptom;
        }
        public void setReportTime(string reportTime)
        {
            this.Report_time = reportTime;
        }
        public void setDate(string date)
        {
            this.Date = date;
        }

    }
}