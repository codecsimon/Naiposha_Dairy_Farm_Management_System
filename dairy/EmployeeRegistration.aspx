<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRegistration.aspx.cs" Inherits="dairy.EmployeeRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Registration</title>
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
    
    .textbox
    {
        height:25px;
    }
  </style>
</head>
<body>
    <header>
    <div class="logo">Naiposha Farm DFMS</div>
    <nav>
    <a href="Index.aspx">Home</a>
      <a href="EmployeeLogin.aspx">Login</a>
      <a href="Contact us.aspx">Contact us</a>
      
      
    </nav>
  </header>
    <h3>Employee Registration Form</h3>
    <form id="form1" runat="server">
        <div>
            
            <div >
                
            <asp:Label ID="Lname" Text="Name" runat="server"></asp:Label><br />
            <asp:TextBox ID="Ename" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="Ename" Display="Dynamic" ErrorMessage="Name is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Name is required!</asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="Lid_n" Text="ID Number" runat="server"></asp:Label><br />
            <asp:TextBox ID="Eid" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="IDValidator" runat="server" ControlToValidate="Eid" Display="Dynamic" ErrorMessage="ID number is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*ID number is required!</asp:RequiredFieldValidator>
                <br />
            <asp:RegularExpressionValidator ID="idlengthValidator" runat="server" ControlToValidate="Eid" Display="Dynamic" ErrorMessage="Please enter a valid ID number!" ForeColor="Red" ValidationExpression="\d{8}" ValidationGroup="vg" Font-Size="11pt">*Please enter a valid ID number!</asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Lphone" Text="Phone" runat="server"></asp:Label><br />
            <asp:TextBox ID="Ephone" runat="server" TextMode="Phone" CssClass="textbox"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Ephone" Display="Dynamic" ErrorMessage="PhoneFieldValidator" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Please enter phone number</asp:RequiredFieldValidator>
                <br />
            <asp:RegularExpressionValidator ID="PhoneExpressionValidator" runat="server" ControlToValidate="Ephone" Display="Dynamic" ErrorMessage="Please enter a valid Phone number!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" ValidationGroup="vg" Font-Size="11pt">*Please enter a valid Phone number!</asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Laddress" Text="Address" runat="server"></asp:Label><br />
            <asp:TextBox ID="Eaddress" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="AddressFieldValidator" runat="server" ControlToValidate="Eaddress" ErrorMessage="Address is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg">*Please enter your address</asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="Lpassword" Text="Password" runat="server"></asp:Label><br />
            <asp:TextBox ID="Epassword" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="PasswordFieldValidator" runat="server" ControlToValidate="Epassword" ErrorMessage="Password is required!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Password is required!</asp:RequiredFieldValidator>
                <br />
            <asp:RegularExpressionValidator ID="PassLengtValidator1" runat="server" ControlToValidate="Epassword" ErrorMessage="Password should contain atleast 8 letters!" ForeColor="Red" ValidationExpression="\d{8}" ValidationGroup="vg" Font-Size="11pt">*Password should contain atleast 8 letters!</asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="LConfirm" Text="Confirm Password" runat="server"></asp:Label><br />
            <asp:TextBox ID="Econfirm" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="ConfirmFieldValidator" runat="server" ControlToValidate="Econfirm" Display="Dynamic" ErrorMessage="Please confirm password!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Please confirm password!</asp:RequiredFieldValidator>
                <br />
            <asp:CompareValidator ID="ComparepassValidator" runat="server" ControlToCompare="Epassword" ControlToValidate="Econfirm" ErrorMessage="Password does not match!" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg" Font-Size="11pt">*Password does not match!</asp:CompareValidator>
            
                </div>
                
            
        </div> 
        
        <asp:Button ID="eRegister" runat="server" Text="Register" CssClass="textbox" OnClick="eRegister_Click" ValidationGroup="vg" /><br />
         
       <br />
        <a href="EmployeeLogin.aspx">Already have an account? Login</a>
  <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
