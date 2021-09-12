<%@ Page Title="" Language="C#" MasterPageFile="~/TestMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="SyasyaDesign.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="containerfluid">
      <div class="row">
         <div class="col-md-8 mx-auto">

            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="ImagesAndIcons/imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                            <span>Account Status - </span>
                            <asp:Label ID="Label1" class="badge rounded-pill bg-success" runat="server" Text="Active"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="dd/MM/YYYY" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                   <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Johor" Value="Johor" />
                              <asp:ListItem Text="Kelantan" Value="Kelantan" />
                              <asp:ListItem Text="Kuala Lumpur" Value="Kuala Lumpur" />
                              <asp:ListItem Text="Labuan" Value="Labuan" />
                              <asp:ListItem Text="Melaka" Value="Melaka" />
                              <asp:ListItem Text="Negeri Sembilan" Value="Negeri Sembilan" />
                              <asp:ListItem Text="Pahang" Value="Pahang" />
                              <asp:ListItem Text="Penang" Value="Penang" />
                              <asp:ListItem Text="Perak" Value="Perak" />
                              <asp:ListItem Text="Perlis" Value="Perlis" />
                              <asp:ListItem Text="Sabah" Value="Sabah" />
                              <asp:ListItem Text="Sarawak" Value="Sarawak" />
                              <asp:ListItem Text="Selangor" Value="Selangor" />
                              <asp:ListItem Text="Terengganu" Value="Terengganu" />
                              <asp:ListItem Text="Wilayah Persekutuan" Value="Wilayah Persekutuan" />
                           </asp:DropDownList>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>

                      <div class="col-md-4">
                        <label>Postcode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Postcode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   &nbsp
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge rounded-pill bg-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   &nbsp
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary w-100 btn-lg" ID="UpdateButton" runat="server" Text="Update" OnClick="UpdateButton_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>

            <a href="Homepage.aspx"><< Back to Home</a><br><br>
         </div>

      </div>
   </div>

</asp:Content>
