using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SyasyaDesign
{
    public partial class TestMaster1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    UserLoginButton.Visible = true; // user login link button
                    SignUpButton.Visible = true; // sign up link button

                    LogOutButton.Visible = false; // logout link button
                    HelloButton.Visible = false; // hello user link button


                    AdminButton.Visible = true; // admin login link button
                    InventoryButton.Visible = false; // inventory link button
                    OrderButton.Visible = false; // order link button

                }
                else if (Session["role"].Equals("user"))
                {
                    UserLoginButton.Visible = false; // user login link button
                    SignUpButton.Visible = false; // sign up link button

                    LogOutButton.Visible = true; // logout link button
                    HelloButton.Visible = true; // hello user link button
                    HelloButton.Text = "Hello " + Session["username"].ToString();


                    AdminButton.Visible = true; // admin login link button
                    InventoryButton.Visible = false; // inventory link button
                    OrderButton.Visible = false; // order link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    UserLoginButton.Visible = false; // user login link button
                    SignUpButton.Visible = false; // sign up link button

                    LogOutButton.Visible = true; // logout link button
                    HelloButton.Visible = true; // hello user link button
                    HelloButton.Text = "Hello Admin";


                    AdminButton.Visible = false; // admin login link button
                    InventoryButton.Visible = true; // inventory link button
                    OrderButton.Visible = true; // order link button
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void UserLoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }
        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }

        protected void AdminButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        protected void InventoryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product(Staff).aspx");
        }
        protected void OrderButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("");
        }
        
        //log out button
        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            UserLoginButton.Visible = true; // user login link button
            SignUpButton.Visible = true; // sign up link button

            LogOutButton.Visible = false; // logout link button
            HelloButton.Visible = false; // hello user link button

            AdminButton.Visible = true; // admin login link button
            InventoryButton.Visible = false; // inventory link button
            OrderButton.Visible = false; // order link button
        }

        //view profile
        protected void HelloButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}