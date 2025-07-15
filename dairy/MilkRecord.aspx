<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MilkRecord.aspx.cs" Inherits="dairy.MilkRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Milk Production - Naiposha Farm DFMS</title>
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
    .textBox{
        height:20px;
    }
    .button
    {
        width:100px;
        height:25px;
        color:black;
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
    <h3>Record MiLK</h3>
    <form id="form1" runat="server">
   <div>
       <asp:Table runat="server" ID="cowMilk" GridLines="Both" Border="1" CellSpacing="20" >
           <asp:TableHeaderRow >
               <asp:TableHeaderCell Text="COW ID"></asp:TableHeaderCell>
               <asp:TableHeaderCell Text="Milk Quantity"></asp:TableHeaderCell>
               <asp:TableHeaderCell Text="Milking Time"></asp:TableHeaderCell>
           </asp:TableHeaderRow>
           <asp:TableRow>
               <asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the CowId" ValidationGroup="vg" Text="*" ControlToValidate="txt_cowid" SetFocusOnError="True"></asp:RequiredFieldValidator>
                   <asp:TextBox ID="txt_cowid" runat="server" CssClass="textBox"></asp:TextBox><br /></asp:TableCell>
               <asp:TableCell>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the milk quantity" SetFocusOnError="True" Text="*" ValidationGroup="vg" ControlToValidate="txt_milkquantity"></asp:RequiredFieldValidator>
                   <asp:TextBox ID="txt_milkquantity" CssClass="textBox" runat="server" TextMode="Number"></asp:TextBox><br /></asp:TableCell>
                <asp:TableCell>
                    
          <asp:DropDownList runat="server" ID="ddl_List">
              <asp:ListItem Value="select" Text="select"></asp:ListItem>
           <asp:ListItem Value="Morning" Text="Morning"></asp:ListItem>
           <asp:ListItem Value="Afternoon" Text="Afternoon"></asp:ListItem>
           <asp:ListItem Value="Evenning" Text="Evenning">Evenning</asp:ListItem>
       </asp:DropDownList>
                </asp:TableCell>
               </asp:TableRow>
       
       
    </asp:Table>


   </div>
        <br /><br />
        <asp:Button runat="server" ID="recordMilk" CssClass="button" Text="Save" OnClick="recordMilk_Click" ValidationGroup="vg"/>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="vg" />
        <br /><br />
        <asp:GridView runat="server" ID="grid1" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" CellSpacing="20"></asp:GridView>
        <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
   
</body>
</html>
