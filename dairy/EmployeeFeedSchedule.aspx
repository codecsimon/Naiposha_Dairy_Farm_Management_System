<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeFeedSchedule.aspx.cs" Inherits="dairy.EmployeeFeedSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3> Feeding Schedule</h3>

            <asp:GridView runat="server" ID="feed" OnSelectedIndexChanged="feed_SelectedIndexChanged" ></asp:GridView>
        </div>
    </form>
</body>
</html>
