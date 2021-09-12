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
.label { 
     padding-left:20%;
     padding-top: 20px;
     text-align:left
}
.label2{
    padding-top: 20px;
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

.parent{
    display: flex;
}
.left{
    height:100%;
    width:100%;
    text-align:center;
}
         

    .auto-style1 {
        margin-top: 30px;
        font-size: 18px;
        font-weight: bold;
        text-align: left;
        margin-bottom: 20px;
        width: 572px;
    }
    .auto-style2 {
        width: 572px;
    }
    .auto-style3 {
        width: 572px;
        height: 19px;
    }
    .auto-style4 {
        height: 19px;
    }
         

</style>
<div class="backg">
    <div class="parent">
        <div class="left">
       <table class="styled-table">
           <tr><td class="auto-style1">Stock of <asp:Label ID="lblProd" runat="server" Text="Label"></asp:Label></td></tr>
           <tr>
                    <td colspan="2"><hr /></td>
                  </tr>
           
           <tr><td style="text-align:center" colspan="2">
               <asp:Image ID="ImageProduct" runat="server" BorderColor="Black" Width="200px" Height="200px"/>
               <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style2">
            <asp:Label ID="ProductID" runat="server" Text="ProductID:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
               <asp:Label ID="ProdID" runat="server" Text="ID"></asp:Label>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="ProductName:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px" class="auto-style4">
                <asp:Label ID="ProdName" runat="server" Text="Name"></asp:Label>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="ProductStock:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <asp:Label ID="ProdStock" runat="server" Text="Stock"></asp:Label>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="ProductBrand:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <asp:Label ID="ProdBrand" runat="server" Text="Brand"></asp:Label>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="ProductDescription:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <asp:Label ID="ProdDesc" runat="server" Text="Description"></asp:Label>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style2">
            <asp:Label ID="Label5" runat="server" Text="ProductCategory:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <asp:Label ID="ProdCat" runat="server" Text="Category"></asp:Label>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style2">
            <asp:Label ID="Label8" runat="server" Text="ProductPrice:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <asp:Label ID="ProdPrice" runat="server" Text="Price"></asp:Label>
            </td>
        </tr>


            
          
           <tr><td colspan="2">
               <asp:Button ID="btndelete" runat="server" Text="Delete" CssClass="button" OnClick="btndelete_Click"/>
               </td></tr>
       </table>
       </div>
     </div>
    </div>
</asp:Content>
