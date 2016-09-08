<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetEmployees.aspx.cs" Inherits="GetEmployees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List of employees</title>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="controls">
        <asp:Button ID="btnGetEmployees" CssClass="w3-btn w3-green" runat="server" Text="Get employees" OnClick="btnGetEmployees_Click" />
    </div>
    <div id="display">
        <asp:GridView ID="gridEmployeeData" runat="server"></asp:GridView>
    </div>
    <div id="footer">
        <asp:Label ID="lblStatus" CssClass="w3-pale-green" runat="server" Text="IMA FOOTER"></asp:Label>
    </div>
    </form>
</body>
</html>
