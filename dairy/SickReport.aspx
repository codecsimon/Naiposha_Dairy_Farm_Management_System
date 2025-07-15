<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SickReport.aspx.cs" Inherits="dairy.SickReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Sick Report</h2>

           <asp:Table BorderStyle="Solid" GridLines="both" runat="server" ID="sickTable">
             
               <asp:TableHeaderRow ForeColor="White" BackColor="Brown">
                   <asp:TableHeaderCell Text="Sick Report"></asp:TableHeaderCell>
               </asp:TableHeaderRow>
               <asp:TableRow>
                   <asp:TableHeaderCell Text="CowID"></asp:TableHeaderCell>
                   <asp:TableCell> 
                       <asp:TextBox ID="txt_cowid" runat="server"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow Width="50">
                   <asp:TableHeaderCell Text="Symptom"></asp:TableHeaderCell>
                   <asp:TableCell> 
                       <asp:TextBox ID="txt_syptom" runat="server"></asp:TextBox>
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   
                    <asp:TableHeaderCell Text="Report Time"></asp:TableHeaderCell>
                   <asp:TableCell>
                       <asp:DropDownList ID="ddl_drop" runat="server">
                           <asp:ListItem>Select Time</asp:ListItem>
                           <asp:ListItem Text="Morning" Value="Morning"></asp:ListItem>
                           <asp:ListItem Text="Afternoon" Value="Afternoon"></asp:ListItem>
                           <asp:ListItem Text="Evenning" Value="Evenning"></asp:ListItem>
                       </asp:DropDownList>
                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
            <br />
            <asp:Button runat="server" ID="btn_save" Text="Save" OnClick="btn_save_Click"/>
            <br />
            <asp:GridView runat="server" ID="sick"></asp:GridView>
        </div>
        <footer>
    <p>&copy; 2025 Naiposha Farm. All rights reserved.</p>
  </footer>
    </form>
</body>
</html>
