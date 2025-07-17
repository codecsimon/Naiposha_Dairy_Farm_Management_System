<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventoryReport.aspx.cs" Inherits="dairy.InventoryReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inventory report</title>
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
        <div>
            <h3>Full inventory</h3>
            <asp:TextBox runat="server" ID="txt_search"></asp:TextBox>
            <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_Click"/>
            <asp:GridView runat="server" ID="gridInventory">
                <HeaderStyle BackColor="Black" ForeColor="white"/>
            </asp:GridView>
            <asp:Label ID="reportIn" Text="0" runat="server" ></asp:Label>
            <asp:GridView runat="server" ID="GridTotal">
                
            </asp:GridView>
            <div>
                <asp:Button runat="server" ID="btnAdd" Text="Add Items" OnClick="btnAdd_Click"/>
                <asp:Button runat="server" ID="btnUpdate" Text="Update Items" OnClick="btnUpdate_Click"/>
                <asp:Button runat="server" ID="btnDelete" Text="Delete Items" OnClick="btnDelete_Click"/>
            </div>
        </div>
        <asp:Panel runat="server" ID="updatePanel" Visible="false">
                <table border="1" >
                    <tbody>
                    <tr>
                        <tb>
                            <th>
                                <asp:Label ID="LName" runat="server" Text="Item_Name"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LSupplier" runat="server" Text="Supplier"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LQuantity" runat="server" Text="Quantity"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LCost" runat="server" Text="Cost_Per_Quantity"></asp:Label>
                            </th>
                            
                        </tb>
                        <tr>
                            <th>
                                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_supplier" runat="server" TextMode="Number"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_quantity" runat="server"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_cost" runat="server"></asp:TextBox>
                            </th>
                            
                        </tr>
                        <tr>
                            <th>
                                <asp:Button ID="btn_add" runat="server"  Text="Save" />
                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" />
                            </th>
                        </tr>
                    </tr>


                   </tbody>
                </table>
            </asp:Panel>
        <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
