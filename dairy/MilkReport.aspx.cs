using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dairy
{
    public partial class MilkReport : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");
        public static string response="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(conn.State== ConnectionState.Closed)

            {
                conn.Open();
                viewMILK();
            }
            else
            {
                conn.Close();
            }
            
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            string search = txt_search.Text.ToString();
            DataTable dt = search_Object(search);

            grid_milk.DataSource = dt;
            grid_milk.DataBind();
            Page.Response.Write(response);
        }
        public DataTable search_Object(string search)
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from MilkRecord where Cow_ID=@cowid";
                cmd.Parameters.AddWithValue("cowid",Convert.ToInt32(search));

                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);
                response = "FOUND ONE RECORD";
                return dt;
            }
            catch (Exception ex) 
            {
                response = ex.Message;
                return new DataTable();
                
            }
          
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            string  search = txt_search.Text.ToString();
            DeleteMilkRecord(search);
            viewMILK();

        }
        public void DeleteMilkRecord(string cowid)
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from MilkRecord where Cow_ID=@cowid";
                cmd.Parameters.AddWithValue("cowid", Convert.ToInt32(cowid));

                cmd.ExecuteNonQuery();
                response = " Milk record deleted succesfully";
            }
            catch(Exception ex)
            {
                response = ex.Message;
            }
        }
        public void addMilk(dairy.MilkRecord record)
        {
            try
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into MilkRecord values (@cowid,@milkquantity,@date,@milktime)";
                cmd.Parameters.AddWithValue("@cowid", record.getCowid());
                cmd.Parameters.AddWithValue("@milkquantity", record.getMilkQuantity());
                cmd.Parameters.AddWithValue("@date", record.getDate());
                cmd.Parameters.AddWithValue("@milktime", record.getTime());

                cmd.ExecuteNonQuery();
                response = "Record added Succesfully!";
                viewMILK();
            }
            catch (Exception ex) 
            {
                response=ex.Message;
            }
        }
        public void updateMilk(dairy.MilkRecord record)
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update MilkRecord set @milkquantity,@date,@milktime)";
                cmd.Parameters.AddWithValue("@cowid", record.getCowid());
                cmd.Parameters.AddWithValue("@milkquantity", record.getMilkQuantity());
                cmd.Parameters.AddWithValue("@date", record.getDate());
                cmd.Parameters.AddWithValue("@milktime", record.getTime());

                cmd.ExecuteNonQuery();
                response = "Record added Succesfully!";
                viewMILK();

            }
            catch(Exception ex)
            {
                response = ex.Message;
            }
        }
        public DataTable viewMILK()
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from MilkRecord";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);
                return dt;
            }
            catch
            {
                return new DataTable();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            updatePanel.Visible = true;

        }

        protected void btn_updatr_Click(object sender, EventArgs e)
        {
            updatePanel.Visible = true;

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            dairy.MilkRecord record = new dairy.MilkRecord();
            record.setCowID(Convert.ToInt32(txt_cowid.Text));
            record.setMilkQuantinty(Convert.ToInt32(txt_milk.Text));
            record.setDate(txt_date.Text.ToString());
            record.setTime(Drop1.SelectedValue.ToString());

            addMilk(record);
            Page.Response.Write(response);
        }
    }
}