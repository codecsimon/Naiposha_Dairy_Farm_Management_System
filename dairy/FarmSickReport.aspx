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
        <asp:GridView ID="animal" runat="server" ></asp:GridView>

        <asp:Button ID="BTNVIEW" runat="server" Text="View " OnClick="BTNVIEW_Click"/>

        <footer>
       <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
    </footer>
    </form>
</body>
</html>
