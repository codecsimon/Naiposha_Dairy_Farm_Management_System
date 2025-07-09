<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecordMilk.aspx.cs" Inherits="dairy.RecordMilk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h3>Milk Record</h3>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="CowId"></asp:Label>
            <asp:TextBox ID="txt_cowId" runat="server"></asp:TextBox><br />

            <asp:Label runat="server" Text="MilkQuantity"></asp:Label>
            <asp:TextBox ID="txt_milkquantity" runat="server"></asp:TextBox><br />

            <asp:Label runat="server" Text="MilkTime"></asp:Label>
            <asp:DropDownList runat="server" ID="ddl_Time" >
                <asp:ListItem>Morning</asp:ListItem>
                <asp:ListItem>Afternoon</asp:ListItem>
                <asp:ListItem>Evenning</asp:ListItem>
            </asp:DropDownList> <br />
        </div>
        <asp:Button runat="server" ID="recordMilk" Text="Save" OnClick="recordMilk_Click"/>
    </form>
    <asp:GridView runat="server" ID="showMilk"></asp:GridView>
</body>
</html>
