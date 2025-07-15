using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace dairy
{
    public partial class EmployeeFeedSchedule : System.Web.UI.Page
    {
        public static string strcon = ConfigurationManager.ConnectionStrings["ConnectString"].ConnectionString;
        SqlConnection conn = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
                feed.DataSource = viewTable();
                feed.DataBind();
            }
            else
            {
                conn.Close();
            }
        }

        protected void feed_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public DataTable viewTable()
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Feeds";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);

                return dt;


            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
            return new DataTable();
        }
    }
}