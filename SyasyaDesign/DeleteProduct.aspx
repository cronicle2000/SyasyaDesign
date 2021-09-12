<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="SyasyaDesign.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
.backg {
    background-attachment: fixed;
    background-size:cover;
    width:100%;
    background-image: url('../ImagesAndIcons/Images/pexels-photo-1084510.jpeg');
}

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

.text{
    padding-left:20%;
      padding-bottom:10px;
      text-align:left
    }
.textbox2{

    color:dimgrey;
	border-color:grey;
    font-size:16px;
	font-family:Georgia, "Times New Roman", Times, serif;
	height:30px;
    border-radius:5px;
    width:40%
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


.left{
    height:100%;
    width:100%;
    text-align:center;
}
         
         

</style>
    <table>
        <td>
     <asp:SqlDataSource ID="productDB" runat="server" ConnectionString="<%$ ConnectionStrings:ProductDB %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        </td>

        <td>
            <asp:Button ID="Button1" runat="server" Text="Delete" />
        </td>
    </table>
</asp:Content>
