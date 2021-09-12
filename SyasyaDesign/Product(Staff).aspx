<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="Product(Staff).aspx.cs" Inherits="SyasyaDesign.Product_Staff_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductImgs" HeaderText="ProductImgs" SortExpression="ProductImgs" />
                <asp:BoundField DataField="ProductStock" HeaderText="ProductStock" SortExpression="ProductStock" />
                <asp:BoundField DataField="ProductBrand" HeaderText="ProductBrand" SortExpression="ProductBrand" />
                <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                <asp:BoundField DataField="ProductCategory" HeaderText="ProductCategory" SortExpression="ProductCategory" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductDB %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    </table>
</asp:Content>
