<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="dairy.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory - Naiposha Farm DFMS</title>
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
    <form id="form1" runat="server">
  
    <div>
        <br /><br />
        <asp:Table runat="server" GridLines="Both" BorderWidth="1" >
            <asp:TableHeaderRow BackColor="Black" ForeColor="white">
                <asp:TableHeaderCell Text="Item Name"></asp:TableHeaderCell>
                <asp:TableHeaderCell Text="Supplier"></asp:TableHeaderCell>
                <asp:TableHeaderCell Text="Quantity"></asp:TableHeaderCell>
                <asp:TableHeaderCell Text="Cost_Per_Quantity"></asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter the name of the item" ControlToValidate="txt_name" Display="Dynamic" Text="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox> 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the name of the supplier" Display="Dynamic" ControlToValidate="txt_supplier" SetFocusOnError="True" ValidationGroup="vg" Text="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_supplier" runat="server"></asp:TextBox> 
                </asp:TableCell>

                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the quantity of the item" SetFocusOnError="True" Text="*" ValidationGroup="vg" ControlToValidate="txt_quantity" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_quantity" runat="server" TextMode="Number"></asp:TextBox> 
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter the cost per Item" ControlToValidate="txt_cost" Display="Dynamic" Text="*" ValidationGroup="vg" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txt_cost" runat="server" TextMode="Number"></asp:TextBox> <br />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        
        

    </div>
        <br />
        <br />
    <div class="button-group">

      <asp:Button Text="Save" runat="server" ID="btnSave" OnClick="btnSave_Click" ValidationGroup="vg" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vg" ForeColor="Red" />
      <asp:Button Text="View Inventory" runat="server" ID="btnView" OnClick="btnView_Click"/>
    </div>
<br /><br />
    <div class="search-bar">
      <input type="text" placeholder="Search inventory..." runat="server"/>
    </div>
        <br /><br />
        <h3>Records</h3>
    <asp:GridView ID="gridView" runat="server"></asp:GridView>
 <hr />
        <br />

        <br />
  <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
