<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeReport.aspx.cs" Inherits="dairy.EmployeeReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Report</title>
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
    <form id="form1" runat="server">
        <div>
            <input id="txt_Search" placeholder="Search employee.." runat="server" type="number"/>
            <asp:Button runat="server" Text="Search" ID="btnSearch" OnClick="btnSearch_Click"/><br />
            <h3>Employees List</h3>
            <br />

            <asp:GridView ID="gridEmployee" runat="server"></asp:GridView><br />
            <asp:Button Text="Add Employee" runat="server" ID="btnSave" OnClick="btnSave_Click"/>
            <asp:Button Text="Update" runat="server" ID="btnUpdate" OnClick="btnUpdate_Click"/>
            <asp:Button Text="Delete" runat="server" ID="btnDelete" OnClick="btnDelete_Click" />

            <asp:Panel runat="server" ID="updatePanel" Visible="false">
                <table border="1" >
                    <tbody>
                    <tr>
                        <tb>
                            <th>
                                <asp:Label ID="LName" runat="server" Text="Name"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LIDnumber" runat="server" Text="ID Number"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LPhone" runat="server" Text="Phone"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LAddress" runat="server" Text="Address"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LPassword" runat="server" Text="Password" Visible="false" ></asp:Label>
                            </th>
                        </tb>
                        <tr>
                            <th>
                                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_idnumber" runat="server" TextMode="Number"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_password" runat="server" Visible="false"></asp:TextBox>
                            </th>
                        </tr>
                        <tr>
                            <th>
                                <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save" />
                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />
                            </th>
                        </tr>
                    </tr>


                   </tbody>
                </table>
            </asp:Panel>
        </div>
        <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
