<%@ Page Title="" Language="C#" MasterPageFile="~/exercise4_masterpage.master" AutoEventWireup="true" CodeFile="WithClass.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView id="gdClients" runat="server">
        <HeaderStyle Font-Bold="true" />
    </asp:GridView>
    <asp:Label id="lblStatus" runat="server"></asp:Label>
</asp:Content>

