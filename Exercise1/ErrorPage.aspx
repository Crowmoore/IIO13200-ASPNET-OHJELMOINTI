<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Please use ONLY numerical inputs</h3>

        <asp:Button ID="btnBack" runat="server" Text="Go back" OnClick="btnBack_Click" />
    </div>
    </form>
</body>
</html>
