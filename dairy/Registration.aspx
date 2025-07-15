<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="dairy.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register - Naiposha Farm DBMS</title>
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
        .register-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
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
        }
        .register-box .extra-links {
            text-align: center;
        }
        .register-box .extra-links a {
            display: block;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }
        .register-box .extra-links a:hover {
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
            <a href="login.aspx">Login</a>
            <a href="ContactUs.aspx">Contact Us</a>
        </nav>
    </header>
    <div class="register-container">
        <div class="register-box">
            <h2>Farm Manager</h2>
             <form id="form1" runat="server">

                 <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                 <asp:TextBox ID="fName" runat="server" ValidationGroup="vg"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="fName" ErrorMessage="Name is required" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Name is required!</asp:RequiredFieldValidator>

                 <br />
                 <br />

                 <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                 <asp:TextBox ID="fEmail" runat="server"  ValidationGroup="vg"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="fEmail" ErrorMessage="Email is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Email is required</asp:RequiredFieldValidator>
                 <br />
                 <asp:RegularExpressionValidator ID="EmailValid" runat="server" ControlToValidate="fEmail" ErrorMessage="Please enter a valid email!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg" Font-Size="11pt">*Please enter a valid email!</asp:RegularExpressionValidator>

                 <br />

                 <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                 <asp:TextBox ID="fPhone" runat="server"  ValidationGroup="vg"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="phoneValidator" runat="server" ControlToValidate="fPhone" ErrorMessage="Phone number is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Phone is required</asp:RequiredFieldValidator>
                 <br />
                 <asp:RegularExpressionValidator ID="phoneValid" runat="server" ControlToValidate="fPhone" ErrorMessage="Please enter a valid phone" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="vg" Font-Size="11pt">*Please enter a valid phone</asp:RegularExpressionValidator>

                 <br />

                 <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                 <asp:TextBox ID="fAddress" runat="server"  ValidationGroup="vg"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="addressValidator" runat="server" ControlToValidate="fAddress" ErrorMessage="Address is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Address is required</asp:RequiredFieldValidator>

                 <br />

                 <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                 <asp:TextBox ID="fPassword" runat="server"  ValidationGroup="vg"></asp:TextBox>

                 <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="fPassword" ErrorMessage="Password is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Password is required!</asp:RequiredFieldValidator>
&nbsp;<br />
                 <asp:RegularExpressionValidator ID="lengthValidator" runat="server" ControlToValidate="fPassword" ErrorMessage="Password should contain atleast 8 Characters" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{8}" ValidationGroup="vg" Font-Size="11pt">*Password should contain atleast 8 Characters</asp:RegularExpressionValidator>

                 <br />

                 <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                 <asp:TextBox ID="fCoPassword" runat="server"  ValidationGroup="vg"></asp:TextBox>

                 




                
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="fCoPassword" ErrorMessage="Confirm Password is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Please Confirm Password!</asp:RequiredFieldValidator>
                 <br />
                 <asp:CompareValidator ID="ComparePass" runat="server" ControlToCompare="fPassword" ControlToValidate="fCoPassword" ErrorMessage="Password doesnot match" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Password doesnot match</asp:CompareValidator>

                 <br />

                 




                
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" ValidationGroup="vg" />
                <div class="extra-links">
                    <a href="login.aspx">Already have an account? Login</a>
                </div>
                 
             </form>
            
        </div>
    </div>
   <footer>
       <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
    </footer>
</body>
</html>
