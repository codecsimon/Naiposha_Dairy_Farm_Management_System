2<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="dairy.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Naiposha Farm DFMS</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image: url(Farm.jpeg);
            background-size: cover;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        header {
            background: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0px 4px 2px -2px gray;
        }
        .logo {
            font-size: 20px;
            font-weight: bold;
        }
        nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        .hero {
            padding: 50px;
            background: url('farm-bg.jpg') no-repeat center center/cover;
            color: red;
            font-size: 30px;
        }
        .hero span {
            display: block;
            font-size: 20px;
            color: black;
        }
        .explore-btn {
            display: inline-block;
            background: gray;
            color: yellow;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
            font-size: 18px;
        }
        footer {
            background: black;
            color: white;
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 2.5rem; 
        }
        footer a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
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
    <section class="hero">
        <p>Real Farm Freshness that Purifies the Body</p>
        <a href="#" class="explore-btn">Explore</a>
    </section>
    <footer>
        <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
    </footer>
    </form>
</body>
</html>
