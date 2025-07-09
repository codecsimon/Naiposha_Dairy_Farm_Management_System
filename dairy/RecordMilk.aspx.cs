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
    public partial class RecordMilk : System.Web.UI.Page
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

        protected void recordMilk_Click(object sender, EventArgs e)
        {
            dairy.MilkRecord record=new dairy.MilkRecord();
            record.setCowID(Convert.ToInt32(txt_cowId));
            record.setMilkQuantinty(Convert.ToInt32(txt_milkquantity));
            record.setDate(DateTime.Now.Date.ToShortDateString());
            record.setTime(ddl_Time.SelectedItem.ToString());
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Milk_record values (@CowID,@Milkquantity,@Date,@Time)";
                cmd.Parameters.AddWithValue("@CowID",record.getCowid());
                cmd.Parameters.AddWithValue("@Milkquantity",record.getMilkQuantity());
                cmd.Parameters.AddWithValue("@Date",record.getDate());
                cmd.Parameters.AddWithValue("@Time",record.getTime());
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);

                sd.Fill(dt);

                showMilk.DataSource = dt;
                showMilk.DataBind();

                Page.Response.Write("MilkRecorded Successfully!");

            }
            catch(Exception ex) 
            {
                Page.Response.Write(ex.Message);
            }

        }
    }
}