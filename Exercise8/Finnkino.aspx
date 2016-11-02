<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Finnkino.aspx.cs" Inherits="Finnkino" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="float:left">
        <asp:ListBox ID="lbTheaters" Height="350" runat="server" OnSelectedIndexChanged="lbTheaters_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
    </div>
        <div id="images" runat="server"></div>
    </form>
</body>
</html>
