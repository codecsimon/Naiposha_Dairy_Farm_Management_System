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
    public partial class EmployeeRegistration : System.Web.UI.Page
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

        protected void eRegister_Click(object sender, EventArgs e)
        {
            FarmEmployee employee = new FarmEmployee();
            employee.setName(Ename.Text.ToString());
            employee.setID_number(Convert.ToInt32(Eid.Text));
            employee.setPhone(Convert.ToInt32(Ephone.Text));
            employee.setAddress(Eaddress.Text.ToString());
            employee.setPassword(Epassword.Text.ToString());
            try
            {
            
                SqlCommand cmd = new SqlCommand("insert into FarmEmployee values (@name,@idnumber,@phone,@address,@password)",conn);
                cmd.Parameters.AddWithValue("@name",employee.getName());
                cmd.Parameters.AddWithValue("@idnumber", employee.getId_number());
                cmd.Parameters.AddWithValue("@phone", employee.getPhone());
                cmd.Parameters.AddWithValue("@address", employee.getAddress());
                cmd.Parameters.AddWithValue("@password", employee.getPassword());

                cmd.ExecuteNonQuery();
                Page.Response.Write("Registration Successful");
                //Page.Response.Redirect("EmployeeLogin.aspx");
            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }
    }
}