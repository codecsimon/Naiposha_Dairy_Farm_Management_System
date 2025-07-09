using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dairy.dairy
{
    public class Cow 
    {
        int ID;
        string name;
        int Weight;
        int Height;
        string breed;
        public Cow()
        {

        }
        public Cow(int ID,string name, int weight, int height, string breed)
        {
            this.ID = ID;
            this.name = name;
            this.Weight = weight;
            this.Height = height;
            this.breed = breed;
        }
        public int getId()
        {
            return this.ID;
        }
        public string getName() 
        {
            return this.name;
        }
        public int getHeight()
        {
            return this.Height;
        }
        public string getBreed() 
        {
            return this.breed;
        }
        public int getWeight()
        {
            return this.Weight;
        }
        public void setId(int ID)
        {
            this.ID=ID;
        }
        public void setName(string name)
        { 
            this.name = name;
        }
        public void setHeight(int height)
        {
            this.Height = height;
        }
        public void setWeight (int weight)
        {
            this.Weight=weight;
        }
        public void setBreed ( string breed)
        {
            this.breed=breed;
        }
    }
    
    
}