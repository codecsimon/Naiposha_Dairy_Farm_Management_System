<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmSickReport.aspx.cs" Inherits="dairy.FarmSickReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sick Animals Notification</title>
    
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
    <form id="form1" runat="server">
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
        <div>
            <h2>Sick Animals Report Alert</h2>

        </div>
        <h3>Notifications</h3>
        <input placeholder="search sick repoort by Cow id.." id="txt_search" runat="server"/>
        <asp:Button runat="server" ID="BTN_SICK" Text="Search" OnClick="BTN_SICK_Click" ></asp:Button>
        <br /><br />
        <asp:GridView ID="animal" runat="server" >
            <HeaderStyle BackColor="Black" ForeColor="white"/>
        </asp:GridView>
        <br />
        <asp:Button ID="BTNVIEW" runat="server" Text="View Resposes" OnClick="BTNVIEW_Click"/>

        <h3> Response</h3>
        <hr />
        <asp:Table BorderStyle="Solid" GridLines="both" runat="server" ID="sickTable">
             
               <asp:TableHeaderRow ForeColor="White" BackColor="Brown">
                   <asp:TableHeaderCell Text="Sick Cow Response"></asp:TableHeaderCell>
               </asp:TableHeaderRow>
               <asp:TableRow>
                   <asp:TableHeaderCell Text="SickReportID"></asp:TableHeaderCell>
                   <asp:TableCell> 
                       <input type="text" id="txt_sickid" runat="server"/>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow Width="50">
                   <asp:TableHeaderCell Text="ManagerID"></asp:TableHeaderCell>
                   <asp:TableCell> 
                       <input type="text" id="txt_managerid" runat="server"/>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   
                    <asp:TableHeaderCell Text="Response"></asp:TableHeaderCell>
                   <asp:TableCell>
                       <input type="text" id="txt_response" runat="server"/>
                   </asp:TableCell>
               </asp:TableRow>
            </asp:Table>
        <br />
        

        
         <asp:Button ID="btn_response" runat="server" Text="Respond" OnClick="btn_response_Click"/><br />
       <br />
        <asp:GridView ID="responseGrid" runat="server" >
            <HeaderStyle BackColor="Black" ForeColor="white"/>
        </asp:GridView>
        <br />
        <footer>
       <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
    </footer>
    </form>
</body>
</html>
