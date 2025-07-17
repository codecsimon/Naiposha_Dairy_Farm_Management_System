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
    public partial class FeedReport : System.Web.UI.Page
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
            gridFeed.DataSource = viewTable();
            gridFeed.DataBind();
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