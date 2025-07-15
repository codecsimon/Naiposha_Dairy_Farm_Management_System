<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FarmSickReport.aspx.cs" Inherits="dairy.FarmSickReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sick Animals Notification</title>
    <style>
       
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
