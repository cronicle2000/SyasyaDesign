using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace SyasyaDesign
{
    
    public partial class UpdateProduct : System.Web.UI.Page
    {
        int stock = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["productDB"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();

            // retrieve data
            string strSelect = "Select * from [Table] where ProductID=@ProductID";

            SqlCommand cmdSelect = new SqlCommand(strSelect, con);

            cmdSelect.Parameters.AddWithValue("@ProductID", Request.QueryString["ID"]);

            SqlDataReader dtrProd = cmdSelect.ExecuteReader();

            if (dtrProd.HasRows)
            {
                while (dtrProd.Read())
                {
                    lblProd.Text = dtrProd["ProductID"].ToString();
                    lblName.Text = dtrProd["ProductName"].ToString();
                    lblQuantity.Text = dtrProd["ProductStock"].ToString();
                    stock = Int32.Parse(dtrProd["ProductStock"].ToString());
                    ImageProduct.ImageUrl = dtrProd["ProductImgs"].ToString();
                    //SiteMap.Provider.CurrentNode.ReadOnly = false;
                    //SiteMap.CurrentNode.Title = "Manage " + dtrProd["ProductName"].ToString();
                }
            }
            else
            {
                Response.Write("<script>alert('No such product(s)');</script>");
            }
            con.Close();
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int add = Int32.Parse(txtAddon.Text);
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["productDB"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string str = "Update [Table] set ProductStock=@quantity where ProductID=@id";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.AddWithValue("@quantity", stock + add);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["ID"]);
            int numRowAffected = cmd.ExecuteNonQuery();
            if (numRowAffected > 0)
            {
                Response.Write("<script>alert('Update Quantity Successfully');</script>");
                Server.Transfer("Product(Staff).aspx");
            }
            else
            {
                Response.Write("<script>alert('Failed to Update Quantiy')</script>");
            }
            con.Close();
        }
    }
}