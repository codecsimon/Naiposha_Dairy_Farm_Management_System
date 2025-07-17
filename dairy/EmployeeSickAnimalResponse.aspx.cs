using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace dairy
{
    public partial class EmployeeSickAnimalResponse : System.Web.UI.Page
    {
        public static string strcon = ConfigurationManager.ConnectionStrings["connectString"].ConnectionString;
        SqlConnection conn = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
           if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
                DataTable dt =viewResponse();
                sickFeedback.DataSource = dt;
                sickFeedback.DataBind();
            }
           else
            {
                conn.Close();
            }
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
            catch(Exception ex)
            {
                return new DataTable();
            }
            
        }
    }
}