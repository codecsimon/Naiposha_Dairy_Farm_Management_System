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
    public partial class Inventory : System.Web.UI.Page
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            dairy.Inventory inventory = new dairy.Inventory();
            inventory.setName(txt_name.Text.ToString());
            inventory.setSupplier(txt_supplier.Text.ToString());
            inventory.setQuantity(Convert.ToInt32(txt_quantity.Text));
            inventory.setCost(Convert.ToInt32(txt_cost.Text));
            inventory.setDate(DateTime.Now.Date.ToShortDateString());
            inventory.setTotal_Cost();
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into General_Inventory values(@itemname,@supplier,@quantity,@costper,@date,@totalcost)";
                cmd.Parameters.AddWithValue("@itemname", inventory.getName());
                cmd.Parameters.AddWithValue("@supplier", inventory.getSupplier());
                cmd.Parameters.AddWithValue("@quantity", inventory.getQuantity());
                cmd.Parameters.AddWithValue("@costper", inventory.getCost());
                cmd.Parameters.AddWithValue("@date", inventory.getDate());
                cmd.Parameters.AddWithValue("@totalcost", inventory.getTotal_Cost());

                cmd.ExecuteNonQuery();

                display_data();

                Page.Response.Write("Item Added successfully!");
            }
            catch(Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
            
        }
        public void display_data()
        {
            try
            {
                SqlCommand com = new SqlCommand("select * from General_Inventory", conn);
                com.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sa = new SqlDataAdapter(com);
                sa.Fill(dt);
                gridView.DataSource = dt;
                gridView.DataBind();
            }
            catch (Exception ex)
            {
                Page.Response.Write(ex.Message);
            }
        }
    }
}