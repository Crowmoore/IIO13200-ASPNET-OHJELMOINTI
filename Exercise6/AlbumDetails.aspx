<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AlbumDetails.aspx.cs" Inherits="AlbumDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <img src="" id="albumCover" runat="server" />
    <h3 id="albumHeader" runat="server"></h3>
    <asp:Label Text="ISBN: " runat="server" Font-Bold="true"></asp:Label>
    <asp:Label ID="lblISBN" Text="" runat="server" Font-Bold="true"></asp:Label><br />
    <asp:Label Text="Price: " runat="server" Font-Bold="true"></asp:Label>
    <asp:Label ID="lblPrice" Text="" runat="server" Font-Bold="true"></asp:Label><br />
    <asp:Label Text="Tracks: " runat="server" Font-Bold="true"></asp:Label>
    <div id="trackList" runat="server"></div>
    <a href="RecordStore.aspx" runat="server">Back</a>
</asp:Content>

