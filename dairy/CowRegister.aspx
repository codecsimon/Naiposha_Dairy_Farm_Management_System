<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CowRegister.aspx.cs" Inherits="dairy.CowRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard - Naiposha Farm DFMS</title>
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
    .register-box {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
        }
        .register-box h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .register-box input[type="text"],
        .register-box input[type="email"],
        .register-box input[type="password"],
        .register-box input[type="date"], 
        .register-box input[type="number"]{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .register-box button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-bottom: 10px;
        }
        .register-box button:hover {
            background-color: #0056b3;
        }border-radius: 5px;
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
    <h2>Cows Dashboard</h2>
    <div class="card-grid">
      <div class="card">
        <h3>Register Cow</h3>
        <p>Record the Cows in the Farm</p>
        <div class="register-box">
            <h2>Cow Registration</h2>
    <form id="form1" runat="server">
         <input type="text" placeholder="Full Name" required="required" runat="server" id="cName"/>
                <input type="number" placeholder="Weight" required="required" runat="server" id="cWeight"/>
                <input type="text" placeholder="Breed" required="required" runat="server" id="cBreed"/>
                <input type="number" placeholder="Height" required="required" runat="server" id="cHeights"/>
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
    </form>
</div>
      </div>
      
      </div>
  </div>

  <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
</body>
</html>
