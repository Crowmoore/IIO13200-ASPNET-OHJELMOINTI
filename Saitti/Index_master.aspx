<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Index_master.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>IIO13200 .NET Ohjelmointi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div>
            <h1>IIO13200. NET Ohjelmointi</h1>
            <h2>1.kontaktikerta</h2>
            <p>Lorum ipsum ja niinpoispäin...</p>
            <h3>Perus HTML kontrolleja</h3>
            <a href="TestiAamu.html">Testi html-sivu (aamu)</a>
            <p>
                Esimerkki ASP.NET DataKontrollista
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShowPhotos.aspx">Show Photos</asp:HyperLink>
            </p>
            <p>
                Esimerkki kuinka koodissa rakennetaan HTML:ää
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ShowCustomers.aspx">Show WineCustomers</asp:HyperLink>
            </p>
            <p>
                ASP Hello
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/HelloWorld.aspx">Hello World ASP</asp:HyperLink>
            </p>
        </div>
    </form>
</asp:Content>

