<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="AddProduct(staff).aspx.cs" Inherits="SyasyaDesign.AddProduct_staff_" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        table{
            text-align:center;
            padding: 40px 40px 40px 40px;
        }

        
    </style>
    
                <input id="File1" type="image" style="padding:30px 100px 30px 730px; width: 268px; height: 324px; align-content:center"  />

    <table style="width: 100%;">
        <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="ProductID" runat="server" Text="ProductID:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="Text1" type="text"/>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label1" runat="server" Text="ProductName:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="Text1" type="text" />
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label2" runat="server" Text="ProductStock:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="Text1" type="text" />
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label3" runat="server" Text="ProductBrand:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="Text1" type="text" />
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label4" runat="server" Text="ProductDescription:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="Text1" type="text" />
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label6" runat="server" Text="ProductCategory:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="Text1" type="text" />
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label7" runat="server" Text="ProductPrice:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <input id="Text1" type="text" />
            </td>
        </tr>
    </table>

    <asp:Button ID="Button1" runat="server" Text="Add Product" />
    <asp:Button ID="Button2" runat="server" Text="Cancel" />
</asp:Content>
