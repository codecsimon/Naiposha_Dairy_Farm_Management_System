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
    public partial class FarmSickReport : System.Web.UI.Page
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
            animal.DataSource = display_data();
            animal.DataBind();
        }

        protected void BTN_SICK_Click(object sender, EventArgs e)
        {

        }

        protected void BTNVIEW_Click(object sender, EventArgs e)
        {

        }
        public DataTable display_data()
        {
            try
            {
                string reportstatus = "active";
            SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = " select * from Sick_Report where status=@Status";
                cmd.Parameters.AddWithValue("@Status", reportstatus);

                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);
                return dt;

            }
            catch(Exception ex) 
            {
                Page.Response.Write(ex.Message);
                return new DataTable();
            }

        }
    }
}