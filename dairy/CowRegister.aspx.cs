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
    public partial class CowRegister : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FIP0QVR;Initial Catalog=Naiposha_Farm;User ID=sa;Password=***********");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cowRegister_Click(object sender, EventArgs e)
        {
           

        }
        public void clear_data()
        {
            cName.Value = "";
            cWeight.Value = "";
            cBreed.Value = "";
            cHeights.Value = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                
                dairy.Cow cowRegister = new dairy.Cow();
                cowRegister.setName(cName.Value.ToString());
                cowRegister.setWeight(Convert.ToInt32(cWeight.Value));
                cowRegister.setBreed(cName.Value.ToString());
                cowRegister.setTag(cTag.Value.ToString());
                cowRegister.setHeight(Convert.ToInt32(cHeights.Value));
                if(conn.State==ConnectionState.Closed)
                {
                conn.Open();
                }
                else
                {
                conn.Close();
                }
                try {
                SqlCommand cmd = new SqlCommand("insert into Cow values(@cowname,@weight,@breed,@height,@tag)", conn);
                cmd.Parameters.AddWithValue("@cowname", cowRegister.getName());
                 cmd.Parameters.AddWithValue("@weight", cowRegister.getWeight());
                 cmd.Parameters.AddWithValue("@breed", cowRegister.getBreed());
                 cmd.Parameters.AddWithValue("@height", cowRegister.getHeight());
                 cmd.Parameters.AddWithValue("@tag", cowRegister.getTag());
                cmd.ExecuteNonQuery();
                clear_data();
                Page.Response.Write("Cow registered successfully");
                //Page.Response.Redirect("CowDashBoard.aspx");
            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }
    }
}