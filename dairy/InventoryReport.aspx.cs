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
    public partial class InventoryReport : System.Web.UI.Page
    {
        dairy.Inventory inventory = new dairy.Inventory();
        protected void Page_Load(object sender, EventArgs e)
        {
        
            DataTable table = inventory.viewInventory();
            gridInventory.DataSource = table;
            gridInventory.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string search = txt_search.Text.ToString();
            DataTable viewTable = inventory.Delete_Item(search);
            gridInventory.DataSource = viewTable;
            gridInventory.DataBind();

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            updatePanel.Visible = true;

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = txt_search.Text.ToString();
            DataTable viewTable = inventory.search_item(search);
            gridInventory.DataSource = viewTable;
            gridInventory.DataBind();

        }
    }
}