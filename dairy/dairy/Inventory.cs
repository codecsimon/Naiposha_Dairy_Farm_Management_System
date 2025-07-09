using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace dairy.dairy
{

    public class Inventory
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");

        private int ID;
        private string name;
        private string supplier;
        private int quantity;
        private int cost_per_item;
        private string Date;
        private int Total_Cost;
        private string response; 

        public Inventory()
        { 
        
        } 
        public int getID()
        { return this.ID;}
        public string getName()
        { return this.name; }
        public string getSupplier()
        { return this.supplier; }
        public int getQuantity()
        { return this.quantity; }
        public int getCost()
        { return this.cost_per_item; }
        public string getDate()
        { return this.Date; }
        public int getTotal_Cost()
        { return this.Total_Cost; }
        public string getResponse()
        {
            return this.response;
        }

        public void setID(int ID)
        { this.ID = ID; }
        public void setName(string name)
        { this.name=name; }
        public void setSupplier(string supplier)
        { this.supplier = supplier; }
        public void setQuantity(int Quantity)
        { this.quantity = Quantity; }
        public void setCost(int Cost)
        { this.cost_per_item=Cost; }
        public void setDate(string Date)
        { this.Date = Date; }
        public void setTotal_Cost()
        { this.Total_Cost = this.quantity * this.cost_per_item; }

        public void setResponse(string response)
        {
            this.response = response;
        }
        private void startConnection()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            else
            {
                conn.Close();
            }
        }
        public DataTable viewInventory()
        {
            try
            {
                this.startConnection();
                SqlCommand cmd = new SqlCommand("select * from General_Inventory",conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sa = new SqlDataAdapter(cmd);
                sa.Fill(dt);
                setResponse("Records Retrieved succesfully!");
                return dt;
            }
            catch(Exception ex)
            {
                setResponse(ex.Message);
                return new DataTable();
            }         
        }
        public DataTable Add_item(dairy.Inventory inventory)
        {
            try
            {
                this.startConnection();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into General_Inventory values(@itemname,@supplier,@quantity,@costper,@date,@totalcost)";
                cmd.Parameters.AddWithValue("@itemname", inventory.getName());
                cmd.Parameters.AddWithValue("@supplier", inventory.getSupplier());
                cmd.Parameters.AddWithValue("@quantity", inventory.getQuantity());
                cmd.Parameters.AddWithValue("@costper", inventory.getCost());
                cmd.Parameters.AddWithValue("@date", inventory.getDate());
                cmd.Parameters.AddWithValue("@totalcost", inventory.getTotal_Cost());

                cmd.ExecuteNonQuery();
                setResponse("Item Added Successfully");
                DataTable dt = viewInventory();
                return dt;

                
            }
            catch(Exception ex )
            {
                setResponse(ex.Message);
                return new DataTable();
            }

            
        }
        public DataTable Delete_Item(string item_name)
        {
            try
            {
                this.startConnection();
                SqlCommand cmd= new SqlCommand("delete * from General_Inventory where Item_name=@item",conn);
                cmd.Parameters.AddWithValue("@item",item_name);
                cmd.ExecuteNonQuery();
                setResponse("Item Deleted Successfully");
                DataTable dt =viewInventory();
                return dt;
            }
            catch(Exception ex)
            {
                setResponse(ex.Message);
                return new DataTable();
            }

        }
        public DataTable search_item(string searchname)
        {
            try
            {
                this.startConnection();
                SqlCommand cmd= conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from General_Inventory where item_name=@name";
                cmd.Parameters.AddWithValue("@name", searchname);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sa = new SqlDataAdapter(cmd);
                sa.Fill(dt);
                return dt;

            }
            catch(Exception ex)
            {
                return new DataTable();
            }

            
        }

    }
}