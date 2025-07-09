using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dairy.dairy
{
    public class Authorization
    {
        public Authorization()
        {
            //empty constructor
        }
        public static string login(string email, string password)
         {
            if (email.Equals("sol"))
            {
                return "login successful";
            }
            else
            {
                return "Invalid Credentials";
            }
            
           
            
        }
    }
    
}