<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MoviesDB.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1>Heck yeah! Movies! again...</h1>
    <asp:SqlDataSource ID="srcMovies" runat="server" ConnectionString="<%$ ConnectionStrings:Movies %>" SelectCommand="SELECT [title], [director], [url], [year] FROM [Movies] ORDER BY [title]"></asp:SqlDataSource>
    <asp:GridView ID="gdMovies" runat="server" DataSourceID="srcMovies" HeaderStyle-BackColor="DeepPink" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
<HeaderStyle BackColor="DeepPink"></HeaderStyle>
    </asp:GridView>
    <asp:Repeater ID="repeater" runat="server" DataSourceID="srcMovies">
        <ItemTemplate>
            <h3><%# Eval("title") %></h3>
            <img src="<%# Eval("url") %>" width="200" alt="img" />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

