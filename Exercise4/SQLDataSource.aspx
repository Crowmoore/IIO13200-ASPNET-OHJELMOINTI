<%@ Page Title="" Language="C#" MasterPageFile="~/exercise4_masterpage.master" AutoEventWireup="true" CodeFile="SQLDataSource.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="srcClients" runat="server" ConnectionString="<%$ ConnectionStrings:Clients %>" SelectCommand="SELECT [astunnus], [asnimi], [yhteyshlo], [postitmp] FROM [asiakas]"></asp:SqlDataSource>
    <asp:GridView ID="gdClients" runat="server" DataSourceID="srcClients" HeaderStyle-BackColor="DeepPink"></asp:GridView>
    <asp:Repeater ID="repeater" runat="server" DataSourceID="srcMovies">
        <HeaderTemplate>
            <table border="1" style="width:50%">
                <tr>
                    <td>ID</td>
                    <td>Name</td>
                    <td>Contact</td>
                    <td>Zip code</td>
                </tr>
        </HeaderTemplate>
    </asp:Repeater>
</asp:Content>

