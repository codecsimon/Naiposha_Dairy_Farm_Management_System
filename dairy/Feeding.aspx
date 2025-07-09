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
    <form id="form1" runat="server">
        <h3>Set Feeding Schedule</h3>
        <div class="search-bar">
      <input type="text" placeholder="Search feeding schedule..." runat="server" id="txt_search"/>
            <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" />
    </div>
     <asp:GridView runat="server" ID="gridInventory"> </asp:GridView> 


    <div class="button-group">
      <asp:Button ID="btn_save" runat="server" Text="Save"/>
      <asp:Button ID="btn_edit" runat="server" Text="Edit"/>
      <asp:Button ID="btn_delete" runat="server" Text="Delete"/>
      <asp:Button ID="btn_view" runat="server" Text="View"/>
    </div>
        <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click"/>
    <asp:Table runat="server" ID="schedule" BorderWidth="5px" GridLines="Both">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell Text="CowID"></asp:TableHeaderCell>
            <asp:TableHeaderCell Text="Feed"></asp:TableHeaderCell>
            <asp:TableHeaderCell Text="Quantity in Kg"></asp:TableHeaderCell>
            <asp:TableHeaderCell Text="Time"></asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell><asp:TextBox runat="server" ID="txt_cowid"></asp:TextBox> </asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txt_Feed"></asp:TextBox> </asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="txt_quantity"></asp:TextBox> </asp:TableCell>
             <asp:TableCell><asp:DropDownlist runat="server" ID="ddl_time">
                   <asp:ListItem>Morning</asp:ListItem>
                   <asp:ListItem>Afternoon</asp:ListItem>
                   <asp:ListItem>Evenning</asp:ListItem>
                            </asp:DropDownlist> </asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
    <asp:Button Text="Create Schedule" ID="btn_schedule" runat="server" OnClick="btn_schedule_Click" style="height: 26px"/>

        <asp:GridView runat="server" ID="gridSchedule"></asp:GridView>
    <table>
      <thead>
        <tr>
          <th>Cow ID</th>
          <th>Feed Type</th>
          <th>Feed Quantity (Kg)</th>
          <th>Feeding Time</th>
          <th>Date</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Cow-001</td>
          <td>Silage</td>
          <td>5</td>
          <td>Morning</td>
          <td>2025-06-20</td>
        </tr>
        <tr>
          <td>Cow-002</td>
          <td>Napier Grass</td>
          <td>4</td>
          <td>Evening</td>
          <td>2025-06-20</td>
        </tr>
      </tbody>
    </table>
  </div>

  <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
