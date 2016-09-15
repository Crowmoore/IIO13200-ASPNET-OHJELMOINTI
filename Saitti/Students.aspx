<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Students</h1>

        <asp:Button ID="btnGet3Students" runat="server" Text="Get 3 students" OnClick="btnGet3Students_Click"/>
        <asp:Button ID="btnGetAllStudents" runat="server" Text="Get all students" OnClick="btnGetAllStudents_Click"/>
        <asp:Button ID="btnGet3StudentObjects" runat="server" Text="Get 3 student objects" OnClick="btnGetStudentObjects_Click"/>
        <asp:GridView ID="gvData" runat="server" />
    </div>
    <div id="footer">
        <asp:Label ID="lblMessages" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
