<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lotto.aspx.cs" Inherits="Lotto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblGame" runat="server" Text="Choose your game"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlGame" runat="server">
            <asp:ListItem Text="Lotto" Selected="True" Value="lotto"></asp:ListItem>
            <asp:ListItem Text="Viking Lotto" Value="vikingLotto"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblDraws" runat="server" Text="Number of draws"></asp:Label>
        <br />
        <asp:TextBox ID="tbDraws" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnDraw" runat="server" Text="Draw" OnClick="btnDraw_Click" />
    </div>
    <asp:Panel ID="resultsPanel" runat="server"></asp:Panel>
    </form>
</body>
</html>
