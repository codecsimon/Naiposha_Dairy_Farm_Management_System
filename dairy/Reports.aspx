﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="dairy.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports</title>
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
      <a href="Dashboard.aspx">Dashboard</a>
      <a href="MilkRecord.aspx">Milk Records</a>
      <a href="Feeding.aspx">Feeding</a>
      <a href="Inventory.aspx">Inventory</a>
      <a href="login.aspx">Logout</a>
    </nav>
  </header>

  <div class="container">
    <h2>Welcome to Your Dashboard</h2>
    <div class="card-grid">
      <div class="card">
        <a href="MilkReport.aspx">Milk Production Report</a>
        <p>View and manage daily milk production data.</p>
      </div>
      <div class="card">
        <a href="EmployeeReport.aspx">Employee Report</a>
        <p>Tracks the employees in the farm</p>
      </div>
      <div class="card">
        <a href="InventoryReport.aspx">Inventory Report</a>
        <p>Monitor feed stock, supplements, and equipment.</p>
      </div>
      <div class="card">
        <a href="TotalReports.aspx">Total Spenditure Reports</a>
        <p>Generate production and performance reports.</p>
      </div>
        <div class="card">
        <a href="FeedReport.aspx">Feed Reports</a>
        <p>Generate feeding schedule reports.</p>
      </div>
        <div class="card">
        <a href="FarmSickReport.aspx"> Sick Animals Reports</a>
        <p>Generate reports on the sick animals in the farm.</p>
      </div>
        <div class="card">
        <a href="SalaryReport.aspx">Salary Reports</a>
        <p>Generate employee salary report.</p>
      </div>
    </div>
  </div>

  <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
