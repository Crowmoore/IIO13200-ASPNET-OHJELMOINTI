<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecordStore.aspx.cs" Inherits="RecordStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:XMLDataSource ID="srcAlbums" runat="server" DataFile="~/App_Data/LevykauppaX.xml" XPath="//record" />
    <asp:Repeater ID="repeater" DataSourceID="srcAlbums" runat="server">
        <HeaderTemplate>
            <table border="0">
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td rowspan="2" style="width: 300px;"><img src="Images/<%# Eval("ISBN") %>.jpg" style="width: 150px;"</td>
                <td><h3><%# Eval("Artist") %> - <%# Eval("Title") %></h3></td><br />
            </tr>
            <tr>
                <td><b>ISBN:</b><a href="AlbumDetails.aspx?isbn=<%# Eval("ISBN") %>"><%# Eval("ISBN") %></a><br /><b>Price:</b><%# Eval("Price") %>€</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

