<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MoviesXML.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Heck yeah! Movies!</h1>
    <asp:XmlDataSource ID="srcMovies" runat="server" DataFile="~/App_Data/Movies.xml" XPath="//Movie"></asp:XmlDataSource>
    <asp:GridView ID="gdMovies" runat="server" DataSourceID="srcMovies" HeaderStyle-BackColor="DeepPink"></asp:GridView>
    <h1>Movies listed</h1>
    <asp:Repeater ID="repeater" runat="server" DataSourceID="srcMovies">
        <HeaderTemplate>
            <table border="1" style="width:50%">
                <tr>
                    <td>Movie</td>
                    <td>Director</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("Name")%></td>
                <td><%# Eval("Director") %></td>
            </tr>
            <p><%# Eval("Name")%> director: <%# Eval("Director") %></p>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

