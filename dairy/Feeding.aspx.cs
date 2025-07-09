using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace dairy
{
    public partial class Feeding : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(conn.State== ConnectionState.Closed)
            {
                conn.Open();
            }
            else
            {
                conn.Close();
            }

            show_data();
        }
        public void show_data()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from General_Inventory", conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);

                gridInventory.DataSource = dt;
                gridInventory.DataBind();
            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }
        public DataTable add_search(string feed)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("select * from General_Inventory where Item_name=@feed", conn);
                cmd.Parameters.AddWithValue("@feed", feed);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);

                gridInventory.DataSource = dt;
                gridInventory.DataBind();

                txt_cowid.Text = "1";
                txt_Feed.Text = dt.Rows[0][1].ToString();
                txt_quantity.Text = dt.Rows[0][3].ToString();

                return dt;

            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
                return new DataTable();
            }
        }
        public void show_search(string feed)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("select * from General_Inventory where Item_name=@feed", conn);
                cmd.Parameters.AddWithValue("@feed", feed);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);

                gridInventory.DataSource = dt;
                gridInventory.DataBind();
            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }
        public void show_Schedule()
        {
            try 
            {
                SqlCommand cmd = new SqlCommand("select * from Feeds", conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);
                gridSchedule.DataSource = dt;
                gridSchedule.DataBind();
            
            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }

        }

        protected void search_Click(object sender, EventArgs e)
        {
            try
            {
                string feed_name = txt_search.Value.ToString();
                show_search(feed_name);
            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {
                string feed_name = txt_search.Value.ToString();
                add_search(feed_name);
            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }

        protected void btn_schedule_Click(object sender, EventArgs e)
        {
            DataTable dt = add_search(txt_search.Value.ToString());
            dairy.Feeds Schedule = new dairy.Feeds();
            Schedule.setCowID(Convert.ToInt32(txt_cowid.Text.ToString()));
            Schedule.setFeedType(txt_Feed.Text.ToString());
            Schedule.setFeedTime(ddl_time.SelectedValue.ToString());
            Schedule.setFeedQuantinty(Convert.ToInt32(txt_quantity.Text));
            Schedule.setDate(DateTime.Now.Date.ToShortDateString());

            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Feeds values (@cowid,@feedtype,@feedquantity,@feedtime,@date)";
                cmd.Parameters.AddWithValue("@cowid",Schedule.getcowID());
                cmd.Parameters.AddWithValue("@feedtype",Schedule.getFeedType());
                cmd.Parameters.AddWithValue("@feedquantity",Schedule.getFeedQuantity());
                cmd.Parameters.AddWithValue("@feedtime",Schedule.getFeedTime());
                cmd.Parameters.AddWithValue("@date",Schedule.getDate());

                cmd.ExecuteNonQuery();
                show_Schedule();
                Page.Response.Write("Schedule created successfully!");

            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }



        }
    }
}