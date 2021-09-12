using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SyasyaDesign
{
    public partial class Product_Staff_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GR1_command(object sender, GridViewCommandEventArgs e)
        {

            Control ctl = e.CommandSource as Control;
            GridViewRow CurrentRow = ctl.NamingContainer as GridViewRow;
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow clickedRow = GridView1.Rows[index];

            if (e.CommandName == "Update")
            {

                int ID = Convert.ToInt32(GridView1.DataKeys[clickedRow.RowIndex][0]);
                Server.Transfer("UpdateProduct.aspx?ID="+ID);
            }

            if (e.CommandName == "Delete")
            {

                int ID = Convert.ToInt32(GridView1.DataKeys[clickedRow.RowIndex][0]);
                Server.Transfer("DeleteProduct.aspx?ID="+ID);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddProduct(staff).aspx");
        }



    }
}