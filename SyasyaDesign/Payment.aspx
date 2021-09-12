<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="SyasyaDesign.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
        table{
            text-align:center;
            padding: 40px 40px 40px 40px;
        }

        
        </style> 
    <script type="text/javascript">
function ValidNumeric() {    
    
    var charCode = (event.which) ? event.which : event.keyCode;    
    if (charCode >= 48 && charCode <= 57)    
    { return true; }    
    else    
    { return false; }    
}  

    </script>
      <table style="width: 100%;">
        <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="lblTotal" runat="server" Text="Total Amount"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                &nbsp;<asp:Label ID="lblAmount" runat="server" Text="RM "></asp:Label>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
               <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;" class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Card Number:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px" class="auto-style1">
                <asp:TextBox ID="txtCard" runat="server" onkeypress="return ValidNumeric()" MaxLength="16"></asp:TextBox>
                 
            </td>
        </tr>

                <tr>
            <td style="text-align:right; padding-right:15px;">
            <asp:Label ID="lblPac" runat="server" Text="PAC:"></asp:Label>
            </td>

            <td style="text-align:left; padding-left:15px">
                <asp:TextBox ID="txtPac" runat="server" onkeypress="return ValidNumeric()" MaxLength="4"></asp:TextBox>
                <asp:Button ID="btnPac" runat="server" Text="Request PAC" OnClick="btnPac_Click" />
                <asp:Label ID="lbltxtPac" runat="server" Text="" ForeColor="White"></asp:Label>
            </td>
        </tr>
          <tr>
              <td>
                 
              </td>
              <td style="text-align:left; padding-left:15px">
                   <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Enabled="False" OnClick="btnConfirm_Click" />
                  <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click"/>
              </td>
          </tr>
    </table>  
    

</asp:Content>