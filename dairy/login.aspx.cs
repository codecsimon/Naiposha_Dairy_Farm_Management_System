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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn= new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
         
            //Page.Response.Write("Login successful");
            string Temail = fEmail.Value.ToString();
            string Tpassword= fPassword.Value.ToString();
            
            string responses=dairy.Authorization.login(Temail, Tpassword);
            try
            {
                SqlCommand cmd = new SqlCommand("select count(*) from Manager where email='" + Temail + "' and password='" + Tpassword + "'",conn);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.ExecuteNonQuery();
                da.Fill(dt);
               
                if (dt.Rows[0][0].ToString().Equals("1"))
                {
                    Page.Response.Write("Success");
                    Page.Response.Write("<script>alert('login successful')</script>");
                    Page.Response.Redirect("DashBoard.aspx");
                }
                else
                {
                    Page.Response.Write("Invalid Credentials");
                }
            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
            



        }
    }
}