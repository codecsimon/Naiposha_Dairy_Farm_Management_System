﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="dairy.EmployeeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Login Form</title>
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
    .textbox{
    height:25px;
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
    <h3>Employee Login</h3>
    <form id="form1" runat="server" >
        <center>
        <div style="border-style:solid; border-width:1px; border-radius:5px">
            <h3>Employee Login</h3>
             <asp:Label ID="Lid" Text="ID Number" runat="server"></asp:Label><br />
            <asp:TextBox ID="eid" runat="server" TextMode="Number" CssClass="textbox" ValidateRequestMode="Enabled"></asp:TextBox>
             <br />
             <asp:RequiredFieldValidator ID="IDValidator" runat="server" ControlToValidate="eid" Display="Dynamic" ErrorMessage="ID number is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*ID number is required!</asp:RequiredFieldValidator>
             <br />

            <asp:Label ID="Lpass" Text="Password" runat="server"></asp:Label><br />
            <asp:TextBox ID="Epass" runat="server" TextMode="Password" CssClass="textbox" ValidateRequestMode="Enabled"></asp:TextBox>
             <br />
             <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="Epass" Display="Dynamic" ErrorMessage="Password is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Password is required!</asp:RequiredFieldValidator>
             <br />
            <br />
            <asp:Button ID="eLogin" Text="Login" runat="server" OnClick="eLogin_Click" ValidationGroup="vg" CssClass="textbox"/><br />
            <br />
            <br />
            <a href="EmployeeRegistration.aspx">No ACCOUNT!! Register</a>
        
        </div>
        </center>

        
        <footer>
         <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
