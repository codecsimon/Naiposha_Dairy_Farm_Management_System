<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="dairy.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us - Naiposha Farm DFMS</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background-color: #f4f4f4;
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
      max-width: 800px;
      margin: auto;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-top: 40px;
    }
    h2 {
      color: #333;
      margin-bottom: 20px;
    }
    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    input, textarea {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    button {
      padding: 10px 20px;
      background-color: #007bff;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }
    button:hover {
      background-color: #0056b3;
    }
    footer {
      background-color: #333;
      color: #fff;
      text-align: center;
      padding: 10px 0;
      margin-top: 40px;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
       <header>
    <div class="logo">Naiposha Farm DFMS</div>
    <nav>
      <a href="#">Home</a>
      <a href="#">Milk Records</a>
      <a href="#">Feeding</a>
      <a href="#">Inventory</a>
      <a href="#">Contact Us</a>
      <a href="#">Logout</a>
    </nav>
  </header>

  <div class="container">
    <h2>Contact Us</h2>
    
      <label for="name">Name</label>
      <input type="text" id="name" name="name" placeholder="Your full name" required="required" runat="server"/>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="Your email address" required="required" runat="server"/>

      <label for="subject">Subject</label>
      <input type="text" id="subject" name="subject" placeholder="Subject of your message" required="required" runat="server"/>

      <label for="message">Message</label>
      <textarea id="message" name="message" rows="5" placeholder="Your message here..." required="required" runat="server"></textarea>

      <button type="submit">Send Message</button>
    
  </div>

  <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
