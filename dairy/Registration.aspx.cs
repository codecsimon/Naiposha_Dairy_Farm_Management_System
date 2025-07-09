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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            Page.Response.Write("You have registered successfully");
            
            string name = fName.Text.ToString();
            string email = fEmail.Text.ToString();
            int phone = Convert.ToInt32(fPhone.Text);
            string address = fAddress.Text.ToString();
            string password = fPassword.Text.ToString();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Manager values ('" + name + "','" + email + "','" + phone + "','" + address + "','" + password + "')";
            cmd.ExecuteNonQuery();
            fName.Text = "";
            fEmail.Text = "";
            fPhone.Text = "";
            fAddress.Text = "";
            fPassword.Text = "";
            

        }
        public void display_data()
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Manager";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
           //grid1.DataSource = dt;
            //grid1.DataBind();
        }
    }
}