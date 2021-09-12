<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="AddProduct(staff).aspx.cs" Inherits="SyasyaDesign.AddProduct_staff_" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        table{
            text-align:center;
            padding: 40px 40px 40px 40px;

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
    
    

    <table style="width: 100%;">
        <tr>
            <td style="text-align:center">
            <input id="ProImg" type="text" runat="server" />
              </td>
        </tr>
        <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="ProductID" runat="server" Text="ProductID:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="ProID" type="number" runat="server"/>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="ProductName" runat="server" Text="ProductName:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="ProName" type="text" runat="server" />
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label2" runat="server" Text="ProductStock:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="ProStock" type="number" runat="server"/>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label3" runat="server" Text="ProductBrand:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="ProBrand" type="text" runat="server"/>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label4" runat="server" Text="ProductDescription:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="ProDesc" type="text" runat="server"/>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label6" runat="server" Text="ProductCategory:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="ProCat" type="text" runat="server"/>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label7" runat="server" Text="ProductPrice:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="ProPrice" type="number" runat="server"/>
            </td>
        </tr>

        <tr><td colspan="2">
                <asp:Button ID="Button3" runat="server" Text="Add Product" CssClass="button" OnClick="Button1_Click" />
            </td></tr>
    </table>

</asp:Content>
