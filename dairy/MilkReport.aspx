<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MilkReport.aspx.cs" Inherits="dairy.MilkReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Milk Report</title>
    <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    header {
      background-color: #ffffff;
      padding: 15px 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .logo {
      font-weight: bold;
      font-size: 20px;
    }
    nav a {
      margin-left: 15px;
      text-decoration: none;
      color: #007bff;
      font-weight: bold;
    }
    .container {
      padding: 40px;
    }
    .card-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
    }
    .card {
      background-color: white;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
      transition: transform 0.2s ease-in-out;
    }
    .card:hover {
      transform: translateY(-5px);
    }
    .card h3 {
      margin-bottom: 10px;
    }
    .card p {
      color: #555;
    }
    footer {
      background-color: #333;
      color: #fff;
      text-align: center;
      padding: 10px 0;
      position: fixed;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
         <header>
    <div class="logo">Naiposha Farm DFMS</div>
    <nav>
      <a href="Dashboard.aspx">Dashboard</a>
      <a href="MilkRecord.aspx">Milk Records</a>
      <a href="Feeding.aspx">Feeding</a>
      <a href="Inventory.aspx">Inventory</a>
      <a href="login.aspx">Logout</a>
    </nav>
  </header>
    <h2>Milk Report</h2>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
            <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click"/>
            <asp:GridView ID="grid_milk" runat="server"></asp:GridView>
        </div>
        <div>
            <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click"/>
            <asp:Button ID="btn_updatr" runat="server" Text="Update" OnClick="btn_updatr_Click"/>
            <asp:Button ID="btn_delete" runat="server" Text="Delete" OnClick="btn_delete_Click"/>
        </div>
        <div>
            <asp:Panel ID="updatePanel" runat="server" Visible="false">

                <asp:Table BorderStyle="Solid" BorderWidth="1" GridLines="Both" runat="server">

                    <asp:TableHeaderRow>
             
                        
                        <asp:TableHeaderCell Text="COWID"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="MILK QUANTITY"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="DATE"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Text="MILK_TIME"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        
                        <asp:TableCell><asp:TextBox ID="txt_cowid" runat="server"></asp:TextBox></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txt_milk" runat="server"/></asp:TableCell>
                        <asp:TableCell><asp:TextBox ID="txt_date" runat="server" TextMode="Date"/>
                        </asp:TableCell><asp:TableCell> <asp:DropDownList ID="Drop1" runat="server">
                            <asp:ListItem Text="Morning" Value="Morning"></asp:ListItem>
                            <asp:ListItem Text="Afternoon" Value="Afternoon"></asp:ListItem>
                            <asp:ListItem Text="Evenning" Value="Evenning"></asp:ListItem>
                                                        </asp:DropDownList></asp:TableCell>

                    </asp:TableRow></asp:Table>
                <asp:Button runat="server" Text="save" ID="btnsave" OnClick="btnsave_Click" style="height: 26px"/><asp:Button runat="server" Text="cancel" ID="btncancel"/>
            </asp:Panel>

        </div>
         <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
