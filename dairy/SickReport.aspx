<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SickReport.aspx.cs" Inherits="dairy.SickReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Sick Animals</title>
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
        <div>
            <header>
        <div class="logo">Naiposha Farm DFMS</div>
        <nav>
            <a href="Index.aspx">Home</a>
            <a href="login.aspx">Login</a>
            <a href="Registration.aspx">Register</a>
            <a href="EmployeeRegistration.aspx">Employee Register</a>
            <a href="EmployeeLogin.aspx">Employee Login</a>
            <a href="ContactUs.aspx">Contact Us</a>
        </nav>
    </header>
            <h2>Sick Report</h2>

           <asp:Table BorderStyle="Solid" GridLines="both" runat="server" ID="sickTable">
             
               <asp:TableHeaderRow ForeColor="White" BackColor="Brown">
                   <asp:TableHeaderCell Text="Sick Report"></asp:TableHeaderCell>
               </asp:TableHeaderRow>
               <asp:TableRow>
                   <asp:TableHeaderCell Text="CowID"></asp:TableHeaderCell>
                   <asp:TableCell> 
                       <asp:TextBox ID="txt_cowid" runat="server"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow Width="50">
                   <asp:TableHeaderCell Text="Symptom"></asp:TableHeaderCell>
                   <asp:TableCell> 
                       <asp:TextBox ID="txt_syptom" runat="server"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   
                    <asp:TableHeaderCell Text="Report Time"></asp:TableHeaderCell>
                   <asp:TableCell>
                       <asp:DropDownList ID="ddl_drop" runat="server">
                           <asp:ListItem>Select Time</asp:ListItem>
                           <asp:ListItem Text="Morning" Value="Morning"></asp:ListItem>
                           <asp:ListItem Text="Afternoon" Value="Afternoon"></asp:ListItem>
                           <asp:ListItem Text="Evenning" Value="Evenning"></asp:ListItem>
                       </asp:DropDownList>
                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
            <br />
            <asp:Button runat="server" ID="btn_save" Text="Save" OnClick="btn_save_Click"/>
            <br />
            <asp:GridView runat="server" ID="sick"></asp:GridView>
        </div>
        <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
