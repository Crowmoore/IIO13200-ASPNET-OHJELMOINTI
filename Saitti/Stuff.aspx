<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stuff.aspx.cs" Inherits="Stuff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Students %>" DeleteCommand="DELETE FROM [testi] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" SelectCommand="SELECT [id], [name], [description] FROM [testi]" 
                        UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <!-- Optimistic -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Students %>" 
                        DeleteCommand="DELETE FROM [testi] WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description" 
                        InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT [id], [name], [description] FROM [testi]" UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @original_id AND [name] = @original_name AND [description] = @original_description">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h1 class="w3-container w3-indigo">Some random data</h1>
    <div class="w3-row">
        <div class="w3-container w3-half">
            <asp:GridView ID="gvStuff" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvStuff_SelectedIndexChanged" AutoGenerateColumns="false">
                <Columns>
                    <asp:ButtonField DataTextField="id" HeaderText="ID" CommandName="select"/>
                    <asp:BoundField DataField="name" HeaderText="Name"/>
                    <asp:BoundField DataField="description" HeaderText="Description"/>
                </Columns>
            </asp:GridView>
        </div>

        <div class="w3-container w3-half">
            <h2 class="w3-container w3-blue" style="width: 70%">Selection: <asp:Label ID="lblSelected" runat="server"/></h2>
            <asp:DetailsView ID="dvStuff" runat="server" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

