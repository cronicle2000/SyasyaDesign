using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SyasyaDesign
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private const string ID = "admin";
        private const string PASS = "abc123";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = TextBox1.Text;
                string pass = TextBox2.Text;
                string uid_ans = ID;
                string pass_ans = PASS;

                //con.Open();
                //string qry = "select * from Ulogin where UserId='" + uid + "' and Password='" + pass + "'";
                //SqlCommand cmd = new SqlCommand(qry, con);
                //SqlDataReader sdr = cmd.ExecuteReader();
                if (uid == uid_ans && pass == pass_ans)//(sdr.Read())
                {
                    Label4.Text = "Login Sucess......!!";
                }
                else
                {
                    Label4.Text = "UserId & Password Is not correct Try again..!!";

                }
                //con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
