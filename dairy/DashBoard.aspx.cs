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
    public partial class DashBoard : System.Web.UI.Page
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
            notify.Text = no_notifications().ToString();
            notify.ForeColor = System.Drawing.Color.Red;

        }
        public int no_notifications ()
        {

            try
            {
                string statuscode = "active";
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = " select * from Sick_Report where Status=@status";
                cmd.Parameters.AddWithValue("status",statuscode);
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);
                int NO = dt.Rows.Count;
                Page.Response.Write("New notifications");
                return NO;
            }
            catch(Exception ex) 
            {
                Page.Response.Write(ex.Message);
                return 0;
            }
            
        }
    }
}