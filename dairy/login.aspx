<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="dairy.login" %>

<!DOCTYPE html>
<!--Simon Ngugi-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Naiposha Farm DFMS</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            height: 100vh;
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
        .login-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-box {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .login-box h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-box button {
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
        .login-box button:hover {
            background-color: #0056b3;
        }
        .login-box .extra-links {
            text-align: center;
        }
        .login-box .extra-links a {
            display: block;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }
        .login-box .extra-links a:hover {
            text-decoration: underline;
        }
        footer {
            background: black;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        footer a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
        } 
    </style>
</head>
<body>
    
        <header>
            <div class="logo">Naiposha Farm DBMS</div>
            <nav>
                <a href="Index.aspx">Home</a>
                <a href="Registration.aspx">Register</a>
                <a href="ContactUs.aspx">Contact Us</a>

            </nav>
        </header>
        <div class="login-container">
            <div class="login-box">
                <h2>Login</h2>
                <form id="form1" runat="server">
                
                    
                    <input type="text" placeholder="Email"  id="fEmail" runat="server"/>
                
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your email!" ControlToValidate="fEmail" Text="*Enter your email" ValidationGroup="vg" SetFocusOnError="True" Display="Dynamic" Font-Italic="True" Font-Size="11pt" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fEmail" Display="Dynamic" ErrorMessage="Enter a valid email" Font-Italic="True" Font-Size="11pt" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg">*Enter a valid email</asp:RegularExpressionValidator>
                    <br />
                     <input type="password" placeholder="Password"  id="fPassword" runat="server" /><br />
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the password" ControlToValidate="fPassword" ValidationGroup="vg" Text="*Please enter the password" Display="Dynamic" Font-Italic="True" Font-Size="11pt" ForeColor="Red"></asp:RequiredFieldValidator> 
                     <br />
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" ValidationGroup="vg" />
            <div class="extra-links">
                <a href="login.aspx">No Account! Register</a>
                </div>
                    
                </form>
            </div>
            </div>
   
        
    
    <footer>
        <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
    </footer>
</body>
</html>
