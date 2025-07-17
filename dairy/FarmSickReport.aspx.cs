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
        public DataTable viewSickCow(string search)
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Sick_Report where CowId=@cowid";
                cmd.Parameters.AddWithValue("cowid", Convert.ToInt32(search));
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                sd.Fill(dt);
                return dt;
            }
            catch(Exception ex)
            {
                return new DataTable();
            }
            
        }

        protected void BTN_SICK_Click(object sender, EventArgs e)
        {
            string search = txt_search.Value.ToString();
            DataTable dt1 = viewSickCow(search);
            animal.DataSource = dt1;
            animal.DataBind();
        }

        protected void BTNVIEW_Click(object sender, EventArgs e)
        {
            animal.DataSource = display_data();
            animal.DataBind();
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
        public void addResponse()
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Sick_animal_Response values(@sick_id,@managerid,@response,@date)";
                cmd.Parameters.AddWithValue("@sick_id",Convert.ToInt32(txt_sickid.Value));
                cmd.Parameters.AddWithValue("@managerid", Convert.ToInt32(txt_managerid.Value));
                cmd.Parameters.AddWithValue("@response",txt_response.Value.ToString());
                cmd.Parameters.AddWithValue("@date",DateTime.Now.Date.ToShortDateString());

                cmd.ExecuteNonQuery();
                responseGrid.DataSource= viewResponse();
                responseGrid.DataBind();
                Page.Response.Write("Response added successfully!");
                clear_Response_data();
            }
            catch( Exception ex )
            {
                Page.Response.Write(ex.Message);
            }
        }
        public void clear_Response_data()
        {
            txt_managerid.Value = "";
            txt_sickid.Value = "";
            txt_response.Value = "";

        }
        public DataTable viewResponse()
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Sick_animal_Response";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter sqlData = new SqlDataAdapter(cmd);
                sqlData.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return new DataTable();
            }

        }
        protected void btn_response_Click(object sender, EventArgs e)
        {
            addResponse();
        }
    }
}