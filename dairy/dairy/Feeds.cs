using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dairy.dairy
{
    public class Feeds
    {
        private int ID;
        private int CowID;
        private string FeedType;
        private int FeedQuantity;
        private string FeedTime;
        private string Date;

        

        public Feeds()
        {
        //empty constructor
        }
        public void setID(int ID)
        {this.ID=ID;}
        public void setCowID(int cowID)
        { this.CowID =cowID; }
        public void setFeedType(string feedtype)
        { this.FeedType = feedtype; }
        public void setFeedQuantinty(int feedquantity)
        { this.FeedQuantity = feedquantity; }
        public void setFeedTime(string feedTime)
        { this.FeedTime = feedTime; }
        public void setDate(string Date)
        { this.Date = Date; }
        public int getID ()
        { return this.ID; }
        public int getcowID()
        { return this.CowID; }
        public string getFeedType()
        { return this.FeedType; }
        public string getFeedTime()
        { return this.FeedTime; }
        public int getFeedQuantity()
        { return this.FeedQuantity; }
        public string getDate()
        { return this.Date; }


    }

    }