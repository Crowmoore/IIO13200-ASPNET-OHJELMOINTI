<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WindowCalculator.aspx.cs" Inherits="WindowCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Window Dimensions</title>
    <link rel="stylesheet" href="App_Data/styles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <h1>Window dimensions</h1>
        <div>
        <table>
            <tr>
                <td>
                  <asp:Label runat="server">Width:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtWidth" CssClass="user_input" runat="server"></asp:TextBox> mm   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">Height:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHeight" CssClass="user_input" runat="server"></asp:TextBox> mm
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">Border width:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBorder" CssClass="user_input" runat="server" Text="45"></asp:TextBox> mm
                </td>
            </tr>
        </table>
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate price" OnClick="btnCalculate_Click" />
        </div>
        <div class="results">
            <asp:Label ID="lblArea" runat="server">Window area:</asp:Label>
            <br />
            <asp:Label ID="lblPerimeter" runat="server">Border perimeter:</asp:Label>
            <br />
            <asp:Label ID="lblPrice" runat="server">Total price:</asp:Label>
        </div>
    </form>
</body>
</html>