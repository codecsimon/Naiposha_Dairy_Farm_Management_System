<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeFeedSchedule.aspx.cs" Inherits="dairy.EmployeeFeedSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daily Feeding Schedule</title>
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
      <a href="FarmSickReport.aspx">Notifications <asp:Label ID="notify" runat="server" Text="0"></asp:Label></a>
      <a href="MilkRecord.aspx">Milk Records</a>
      <a href="Feeding.aspx">Feeding</a>
      <a href="Inventory.aspx">Inventory</a>
      <a href="login.aspx">Logout</a>
    </nav>
  </header>
        <div>
            <h3> Daily Feeding Schedule</h3>

            <asp:GridView runat="server" ID="feed" OnSelectedIndexChanged="feed_SelectedIndexChanged" ></asp:GridView>
        </div>
         <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
