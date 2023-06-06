<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Raamen.Views.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:Label ID="Lbl1" runat="server" Text="This Is Homepage"></asp:Label>
        <asp:GridView ID="OrderGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="Order_Click">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Broth" HeaderText="Broth" SortExpression="Broth" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="MeatId" HeaderText="MeatId" SortExpression="MeatId" />
                <asp:ButtonField CommandName="Select" HeaderText="Order" ShowHeader="True" Text="Order" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ramen]"></asp:SqlDataSource>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Cart"></asp:Label>
            <asp:GridView ID="CartGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="HeaderId" HeaderText="HeaderId" SortExpression="HeaderId" />
                    <asp:BoundField DataField="RamenId" HeaderText="RamenId" SortExpression="RamenId" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Detail]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
