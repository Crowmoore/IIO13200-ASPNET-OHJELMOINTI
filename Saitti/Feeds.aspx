<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feeds.aspx.cs" Inherits="Feeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="getFeedIL" runat="server" Text="Get RSS IL" OnClick="getFeedIL_Click"/>
    <asp:Button ID="getFeedIS" runat="server" Text="Get RSS IS" OnClick="getFeedIS_Click"/>
    <asp:XmlDataSource ID="dataSource" runat="server"></asp:XmlDataSource>
    <div id="feed_div" runat="server">
       
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

