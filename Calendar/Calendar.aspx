<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager EnablePartialRendering="true" ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div>
        <asp:Label ID="lblHeader" Font-Size="Large" Text="Current date here" runat="server"></asp:Label>
        <br />
        <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="lblSelectedDate" Text="Selected date: " runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblDateDifference" Text="" runat="server"></asp:Label>
                <br />
                <asp:Button ID="btnPreviousYear" runat="server" Text="<< Year" OnClick="btnPreviousYear_Click"/>
                <asp:Button ID="btnNextYear" runat="server" Text="Year >>" OnClick="btnNextYear_Click"/>
                <asp:Calendar ID="calendar" runat="server" VisibleDate="<% #DateTime.Now %>" OnSelectionChanged="calendar_SelectionChanged"></asp:Calendar>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
