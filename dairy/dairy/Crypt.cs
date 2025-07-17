using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace dairy.dairy
{
    public class Crypt
    {
        byte[] bt;
        string plainText;
        string decrypted;

        public Crypt()
        {

        }
        public void setBytes(byte[] b)
        {
            this.bt = b;
        }
        public void setPlainText(string text)
        {
            this.plainText = text;
        }
        public void setDecrypted(string decrypt)
        {
            this.decrypted = decrypt;
        }
        public string getPlainText()
        {
            return this.plainText;
        }
        public string getDecrypted()
        {
            return this.decrypted;
        }
        public byte[] getBytes() 
        {
            return this.bt;
        }
        public string EncyrptPassword()
        {
            bt= Encoding.ASCII.GetBytes(this.plainText);
            string encrpt = Convert.ToBase64String(bt);
            return encrpt;
        }
        public string DecryptPassword()
        {

            try
            {
                bt=Convert.FromBase64String(this.decrypted);
                string decrypt = Encoding.ASCII.GetString(bt);
                return decrypt;
            }
            catch(FormatException ex)
            {
                string decrypt = "";
                return decrypt;
            }
           
        }
    }
}