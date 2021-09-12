<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="Product(Staff).aspx.cs" Inherits="SyasyaDesign.Product_Staff_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>


.styled-table {
    font-size: 0.9em;
    font-family: sans-serif;
    width:70%;
    margin-top:10px;
    box-shadow: 0 8px 16px 0 black;
    background-color:white;
    opacity:0.9;
    border-radius:5px;
    padding:20px;
    margin-bottom:50px;
}
    
.head{
    margin-top:30px;
    font-size:18px;
    font-weight:bold;
    text-align:left;
    margin-bottom:20px;
}

.button{
	 font-family: Raleway, sans-serif;
	 height:40px;
	 width:200px;
	 border:none;
	 background-color:royalblue;
	 color:white;
	 font-size:12pt;
	 border: 1px solid white;
	 cursor:pointer;
	 display:inline-block;
	 border-radius: 5px;
     opacity:1;
}
.button:hover {
    background-color:dimgrey;
    color:white;
}

</style>
    <table>
        <tr>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="1589px" OnRowCommand="GR1_command">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:ImageField DataImageUrlField="ProductImgs" HeaderText="Product Image">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="ProductStock" HeaderText="ProductStock" SortExpression="ProductStock" />
            <asp:BoundField DataField="ProductBrand" HeaderText="ProductBrand" SortExpression="ProductBrand" />
            <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
            <asp:BoundField DataField="ProductCategory" HeaderText="ProductCategory" SortExpression="ProductCategory" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            <asp:ButtonField Text="Update" CommandName="Update"/>
            <asp:ButtonField Text="Delete" CommandName="Delete" />
            <%--<img src="ImagesAndIcons/product1.png" />--%>
        </Columns>
    </asp:GridView>
            </tr>

        <tr><td>
         <a href="AddProduct(staff).aspx"><asp:Button ID="Button2" runat="server" Text="Add" CssClass="button" OnClick="Button2_Click" /></a>
         
            </td>
        </tr>
    </table>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductDB %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

    
</asp:Content>
