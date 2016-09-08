<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HelloWorld.aspx.cs" Inherits="HelloWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Hello World</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Hello ASP.NET!</h1>
        <asp:TextBox ID="txtName" runat="server" placeholder="Insert name here!" ></asp:TextBox>
        <br />
        <asp:Button ID="btnSayHello" runat="server" Text="Greet" OnClick="btnSayHello_Click"/>
        <br />
        <asp:Label ID="lblGreeting" runat="server">...</asp:Label>
    </div>
    </form>
</body>
</html>
