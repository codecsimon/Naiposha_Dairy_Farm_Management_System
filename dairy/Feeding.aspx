<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feeding.aspx.cs" Inherits="dairy.Feeding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feeding Schedule - Naiposha Farm DFMS</title>
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
    <form id="form1" runat="server">
        <h3>Set Feeding Schedule</h3>
        <div class="search-bar">
      <input type="text" placeholder="Search Inventory..." runat="server" id="txt_search"/>
            <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" />
    </div>
        <br /><br />
     <asp:GridView runat="server" ID="gridInventory"> </asp:GridView> 
    <br />

    <div class="button-group">
      <asp:Button ID="btn_save" runat="server" Text="Save"/>
      <asp:Button ID="btn_edit" runat="server" Text="Edit"/>
      <asp:Button ID="btn_delete" runat="server" Text="Delete"/>
      <asp:Button ID="btn_view" runat="server" Text="View"/>
    </div>
        <br />
        <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click"/>
    <br /><br />
        <asp:Table runat="server" ID="schedule" BorderWidth="5px" GridLines="Both">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell Text="CowID"></asp:TableHeaderCell>
            <asp:TableHeaderCell Text="Feed"></asp:TableHeaderCell>
            <asp:TableHeaderCell Text="Quantity in Kg"></asp:TableHeaderCell>
            <asp:TableHeaderCell Text="Time"></asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter the name of the cow" ControlToValidate="txt_cowid" Text="*" ValidationGroup="vg" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" ID="txt_cowid"></asp:TextBox> </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the feed name" ControlToValidate="txt_feed" SetFocusOnError="True" ValidationGroup="vg" Text="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" ID="txt_Feed"></asp:TextBox> </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the quantity of feed for the cow" SetFocusOnError="True" ControlToValidate="txt_quantity" ValidationGroup="vg" Text="*"></asp:RequiredFieldValidator>
                <asp:TextBox runat="server" ID="txt_quantity"></asp:TextBox> </asp:TableCell>
             <asp:TableCell>
                 
                 <asp:DropDownlist runat="server" ID="ddl_time">
                    <asp:ListItem Value="select" Text="Select"></asp:ListItem>
                   <asp:ListItem Value="Morning" Text="Morning"></asp:ListItem>
                   <asp:ListItem Value="Afternoon" Text="Afternoon"></asp:ListItem>
                   <asp:ListItem Value="Evenning" Text="Evenning">Evenning</asp:ListItem>
                            </asp:DropDownlist> </asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
        <br /><br />
    <asp:Button Text="Create Schedule" ID="btn_schedule" runat="server" OnClick="btn_schedule_Click" style="height: 26px" ValidationGroup="vg"/>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" ForeColor="Red" />
        <asp:GridView runat="server" ID="gridSchedule"></asp:GridView>
    
  </div>

  <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
