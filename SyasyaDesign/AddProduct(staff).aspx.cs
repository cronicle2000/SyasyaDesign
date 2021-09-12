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
    public partial class AddProduct_staff_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string strCon = ConfigurationManager.ConnectionStrings["productDB"].ConnectionString;
            con = new SqlConnection(strCon);
            con.Open();
            string str = "Insert into [Table] values(@ProID,@ProName,@ProImg,@ProStock,@ProBrand,@ProDesc,@ProCat,@ProPrice)";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.Parameters.AddWithValue("@ProID",ProID.Value);
            cmd.Parameters.AddWithValue("@ProName", ProName.Value);
            cmd.Parameters.AddWithValue("@ProImg", ProImg.Value);
            cmd.Parameters.AddWithValue("@ProStock", ProStock.Value);
            cmd.Parameters.AddWithValue("@ProBrand", ProBrand.Value);
            cmd.Parameters.AddWithValue("@ProDesc", ProDesc.Value);
            cmd.Parameters.AddWithValue("@ProCat", ProCat.Value);
            cmd.Parameters.AddWithValue("@ProPrice", ProPrice.Value);
            int numRowAffected = cmd.ExecuteNonQuery();
            if (numRowAffected > 0)
            {
                Response.Write("<script>alert('Add Product Successfully');</script>");
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