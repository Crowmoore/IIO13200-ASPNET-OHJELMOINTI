<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetEmployees.aspx.cs" Inherits="GetEmployees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List of employees</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="controls">
        <asp:Button ID="btnGetEmployees" runat="server" Text="Get employees" OnClick="btnGetEmployees_Click" />
    </div>
    <div id="display">
        <asp:GridView ID="gridEmployeeData" runat="server"></asp:GridView>
    </div>
    <div id="footer">
        <asp:Label ID="lblStatus" runat="server" Text="IMA FOOTER"></asp:Label>
    </div>
    </form>
</body>
</html>
