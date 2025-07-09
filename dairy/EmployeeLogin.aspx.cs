using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using dairy.dairy;

namespace dairy
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(conn.State==ConnectionState.Closed)
            {
                conn.Open();
            }
            else
            {
                conn.Close();
            }
        }

        protected void eLogin_Click(object sender, EventArgs e)
        {
            FarmEmployee employee=new FarmEmployee();
            employee.setID_number(Convert.ToInt32(eid.Text.ToString()));
            employee.setPassword(Epass.Text.ToString());

            try
            {

                SqlCommand cmd = new SqlCommand("select count(*) from FarmEmployee where id_number='"+employee.getId_number()+"' and Password='"+employee.getPassword()+"'", conn);
                
                DataTable dt=new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                cmd.ExecuteNonQuery();

                if (dt.Rows[0][0].ToString().Equals("1"))
                {
                    Page.Response.Write("Login Successfull");
                    Page.Response.Redirect("EmployeeDashBoard.aspx");
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