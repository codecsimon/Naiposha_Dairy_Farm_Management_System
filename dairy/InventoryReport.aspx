<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InventoryReport.aspx.cs" Inherits="dairy.InventoryReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Full inventory</h3>
            <asp:TextBox runat="server" ID="txt_search"></asp:TextBox>
            <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_Click"/>
            <asp:GridView runat="server" ID="gridInventory"></asp:GridView>
            <div>
                <asp:Button runat="server" ID="btnAdd" Text="Add Items" OnClick="btnAdd_Click"/>
                <asp:Button runat="server" ID="btnUpdate" Text="Update Items" OnClick="btnUpdate_Click"/>
                <asp:Button runat="server" ID="btnDelete" Text="Delete Items" OnClick="btnDelete_Click"/>
            </div>
        </div>
        <asp:Panel runat="server" ID="updatePanel" Visible="false">
                <table border="1" >
                    <tbody>
                    <tr>
                        <tb>
                            <th>
                                <asp:Label ID="LName" runat="server" Text="Item_Name"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LSupplier" runat="server" Text="Supplier"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LQuantity" runat="server" Text="Quantity"></asp:Label>
                            </th>
                            <th>
                                <asp:Label ID="LCost" runat="server" Text="Cost_Per_Quantity"></asp:Label>
                            </th>
                            
                        </tb>
                        <tr>
                            <th>
                                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_supplier" runat="server" TextMode="Number"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_quantity" runat="server"></asp:TextBox>
                            </th>
                            <th>
                                <asp:TextBox ID="txt_cost" runat="server"></asp:TextBox>
                            </th>
                            
                        </tr>
                        <tr>
                            <th>
                                <asp:Button ID="btn_add" runat="server"  Text="Save" />
                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" />
                            </th>
                        </tr>
                    </tr>


                   </tbody>
                </table>
            </asp:Panel>
    </form>
</body>
</html>
