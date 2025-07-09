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
    public partial class MilkRecord : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        else
            {
                conn.Close();
            }
        }


        protected void recordMilk_Click(object sender, EventArgs e)
        {
            dairy.MilkRecord record = new dairy.MilkRecord();
            record.setCowID(Convert.ToInt32(txt_cowid.Text));
            record.setMilkQuantinty(Convert.ToInt32(txt_milkquantity.Text));
            record.setDate(DateTime.Now.Date.ToShortDateString());
            record.setTime(ddl_List.SelectedItem.Text);

            try
            {
                SqlCommand cmd = new SqlCommand("insert into MilkRecord values (@cowid,@milkquantity,@date,@time)", conn);
                cmd.Parameters.AddWithValue("@cowid", record.getCowid());
                cmd.Parameters.AddWithValue("@milkquantity", record.getMilkQuantity());
                cmd.Parameters.AddWithValue("@date", record.getDate());
                cmd.Parameters.AddWithValue("@time", record.getTime());

                cmd.ExecuteNonQuery();

                display_data();

                Page.Response.Write("Record saved");
            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }

        }
        public void clear_data()
        {
            txt_cowid.Text = "";
            txt_milkquantity.Text = "";
        }
        public void display_data()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from MilkRecord", conn);
                

                cmd.ExecuteNonQuery();

                 DataTable dt = new DataTable();
                 SqlDataAdapter sa = new SqlDataAdapter(cmd);
                 sa.Fill(dt);

                 grid1.DataSource = dt;
                 grid1.DataBind();

            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }

        }
    }
}