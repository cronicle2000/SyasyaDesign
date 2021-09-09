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
            //if (txtUsername.Text == "" && txtPassword.Text == "") //Error when all text box are not fill
            //{
            //    MessageBox.Show("Unable to fill Username and Password", "Error Message!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}
            //else if (txtUsername.Text == "") //Error when all text box are not fill
            //{
            //    MessageBox.Show("Unable to fill Username", "Error Message!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}
            //else if (txtPassword.Text == "") //Error when all text box are not fill
            //{
            //    MessageBox.Show("Unable to fill Password", "Error Message!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}

            //else
            //{
            //    try
            //    {
            //        string myConnection = "datasource=localhost;port=3306;username=root";
            //        MySqlConnection myConn = new MySqlConnection(myConnection);

            //        MySqlCommand SelectCommand = new MySqlCommand("select * from boardinghousedb.employee_table where username='" + this.txtUsername.Text + "' and password='" + this.txtPassword.Text + "' ;", myConn);

            //        MySqlDataReader myReader;

            //        myConn.Open();
            //        myReader = SelectCommand.ExecuteReader();
            //        int count = 0;
            //        while (myReader.Read())
            //        {
            //            count = count + 1;
            //        }
            //        if (count == 1)
            //        {
            //            MessageBox.Show("Username and Password . . . is Correct", "Confirmation Message", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            //            this.Hide();
            //            Menu mm = new Menu();
            //            mm.ShowDialog();
            //        }
            //        else if (count > 1)
            //        {
            //            MessageBox.Show("Duplicate Username and Password . . . Access Denied", "Error Message!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //        }
            //        else
            //        {
            //            MessageBox.Show("Username and Password is Not Correct . . . Please try again", "Error Message!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //            myConn.Close();
            //        }
            //    }
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
