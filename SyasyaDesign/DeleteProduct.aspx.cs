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
    public partial class DeleteProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["productDB"].ConnectionString;

            con = new SqlConnection(strCon);
            con.Open();

            // retrieve data
            string strSelect = "Select * from [Table] where ProductID=@ProdID";

            SqlCommand cmdSelect = new SqlCommand(strSelect, con);

            cmdSelect.Parameters.AddWithValue("@ProdID", Request.QueryString["ID"]);

            SqlDataReader dtrProd = cmdSelect.ExecuteReader();

            if (dtrProd.HasRows)
            {
                while (dtrProd.Read())
                {
                    ProdID.Text = dtrProd["ProductID"].ToString();
                    ProdName.Text = dtrProd["ProductName"].ToString();
                    ProdStock.Text = dtrProd["ProductStock"].ToString();
                    ProdBrand.Text = dtrProd["ProductBrand"].ToString();
                    ProdDesc.Text = dtrProd["ProductDescription"].ToString();
                    ProdCat.Text = dtrProd["ProductCategory"].ToString();
                    ProdPrice.Text = dtrProd["ProductPrice"].ToString();
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

        protected void btndelete_Click(object sender, EventArgs e)
        {
           
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["productDB"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string str = "Delete From [Table] where ProductID=@id";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["ID"]);
            int numRowAffected = cmd.ExecuteNonQuery();
            if (numRowAffected > 0)
            {
                Response.Write("<script>alert('Delete Successfully');</script>");
                Server.Transfer("Product(Staff).aspx");
            }
            else
            {
                Response.Write("<script>alert('Failed to Delete')</script>");
            }
            con.Close();
        }
    }
}