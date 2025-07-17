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
    public partial class SickReport : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\pc\Desktop\emaule\New folder\dairy-farm\dairy\dairy\App_Data\DairyFarmNaiposha.mdf"";Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        if(conn.State== ConnectionState.Closed)
            {
                conn.Open();
                DataTable dt = viewResponse();
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
            catch (Exception ex)
            {
                return new DataTable();
            }

        }
        protected void btn_save_Click(object sender, EventArgs e)
        {
            insertSickReport();
            
        }
        public void insertSickReport()
        {
            try
            {
                string reportstatus="active";

                dairy.SickReport Report = new dairy.SickReport();
                Report.setCow_id(Convert.ToInt32(txt_cowid.Text));
                Report.setSymptom(txt_syptom.Text.ToString());
                Report.setReportTime(ddl_drop.SelectedValue.ToString());
                Report.setDate(DateTime.Now.Date.ToShortDateString());

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Sick_Report values (@cowid,@symptom,@reporttime,@date,@status)";
                cmd.Parameters.AddWithValue("cowid", Report.getCowID());
                cmd.Parameters.AddWithValue("symptom", Report.getSymptom());
                cmd.Parameters.AddWithValue("reporttime", Report.getReport_time());
                cmd.Parameters.AddWithValue("date", Report.getDate());
                cmd.Parameters.AddWithValue("status", reportstatus);
                cmd.ExecuteNonQuery();

                Page.Response.Write("Report added succesfully");
            }
            catch(Exception ex)
            {
            
            Page.Response.Write(ex.Message);
            }

        }
        public DataTable display_Data()
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Sick_Report";
                cmd.ExecuteNonQuery();
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                sd.Fill(dt);


                return dt;

            }
            catch (Exception ex)
            {
                return new DataTable();

            }
            
        }
    }
}