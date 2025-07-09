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
    public partial class EmployeeReport : System.Web.UI.Page
    {   SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");
        public static int token = 0;
        //token that differentiantes function
        protected void Page_Load(object sender, EventArgs e)
        {
            if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            else 
            { 
                conn.Close();
            }
            Display_Data();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchWord = txt_Search.Value.ToString();
            Search_Data(searchWord);
            
        }
        public void update_data()
        {

        }
        public void Search_Data(string search)
        {
            if (search.Equals(""))
            {
                Display_Data();
            }
            else
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("select * from FarmEmployee where Id=@id", conn);
                    cmd.Parameters.AddWithValue("@id", search);
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    SqlDataAdapter sa = new SqlDataAdapter(cmd);
                    sa.Fill(dt);
                    gridEmployee.DataSource = dt;
                    gridEmployee.DataBind();

                    txt_name.Text = dt.Rows[0][1].ToString();
                    txt_idnumber.Text = dt.Rows[0][2].ToString();
                    txt_phone.Text = dt.Rows[0][3].ToString();
                    txt_address.Text = dt.Rows[0][4].ToString();
                }
                catch (Exception ex)
                {
                    Page.Response.Write(ex.Message);
                }
            }
        }
        //function to display data
        public void Display_Data()
        {
            
            try
            {
                SqlCommand cmd = new SqlCommand("select * from FarmEmployee",conn);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sa = new SqlDataAdapter(cmd);
                sa.Fill(dt);
                gridEmployee.DataSource = dt;
                gridEmployee.DataBind();

            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }   
        }
        //function to update employee
        public void update_Employee(string search)
        {
            
            
            dairy.FarmEmployee updateEmployee = new dairy.FarmEmployee();
            updateEmployee.setName(txt_name.Text.ToString());
            updateEmployee.setID_number(Convert.ToInt32(txt_idnumber.Text));
            updateEmployee.setPhone(Convert.ToInt32(txt_phone.Text));
            updateEmployee.setAddress(txt_address.Text);
            updateEmployee.setID(Convert.ToInt32(search));

            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType= CommandType.Text;
                cmd.CommandText = "update FarmEmployee set Name=@name, id_number=@idnumber, phone=@phone,Address=@address where Id=@id";
                cmd.Parameters.AddWithValue("@id",updateEmployee.getID());
                cmd.Parameters.AddWithValue("@name",updateEmployee.getName());
                cmd.Parameters.AddWithValue("@idnumber",updateEmployee.getId_number().ToString());
                cmd.Parameters.AddWithValue("@phone",updateEmployee.getPhone().ToString());
                cmd.Parameters.AddWithValue("@address",updateEmployee.getAddress());
                
                cmd.ExecuteNonQuery();

                Page.Response.Write("Update Successful!");
                Display_Data();

            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }
        //function to delete an employee
        public void delete_Employee(string search)
        {
            int id = Convert.ToInt32(search);
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType= CommandType.Text;
                cmd.CommandText = "delete from FarmEmployee where Id=@id";
                cmd.Parameters.AddWithValue("@id",id);
                cmd.ExecuteNonQuery();

                Page.Response.Write("Delete Successful!");
                Display_Data();

            }
            catch(Exception ex) 
            {
                Page.Response.Write(ex.Message);
            }
        }
        //function to add employee
        public void add_employee()
        {
            
                dairy.FarmEmployee employee = new dairy.FarmEmployee();
                employee.setName(txt_name.Text.ToString());
                employee.setID_number(Convert.ToInt32(txt_idnumber.Text));
                employee.setPhone(Convert.ToInt32(txt_phone.Text));
                employee.setAddress(txt_address.Text.ToString());
                employee.setPassword(txt_password.Text.ToString());
                try
                {

                    SqlCommand cmd = new SqlCommand("insert into FarmEmployee values (@name,@idnumber,@phone,@address,@password)", conn);
                    cmd.Parameters.AddWithValue("@name", employee.getName());
                    cmd.Parameters.AddWithValue("@idnumber", employee.getId_number());
                    cmd.Parameters.AddWithValue("@phone", employee.getPhone());
                    cmd.Parameters.AddWithValue("@address", employee.getAddress());
                    cmd.Parameters.AddWithValue("@password", employee.getPassword());

                    cmd.ExecuteNonQuery();

                }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }
        //update an employee
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            updatePanel.Visible = true;
            string searchword = txt_Search.Value.ToString();
            Search_Data(searchword);
            token = 2;
            
        }
        //delete an employee
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string searchID= txt_Search.Value.ToString();
            delete_Employee(searchID);
        }
        //update combined with add functions
        protected void btn_save_Click(object sender, EventArgs e)
        {
            string searchID = txt_Search.Value.ToString();
            
            if(token==1)
            {
                add_employee();
                Page.Response.Write("Employee Added Successfully!");
            }
            else if (token==2)
            {
                update_Employee(searchID);
            }
            else 
            {
                Page.Response.Write("Select one option"+token);
            }
            

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            updatePanel.Visible = true;
            txt_password.Visible = true;
            LPassword.Visible = true;
            token = 1;
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            updatePanel.Visible = false;

        }
    }
}