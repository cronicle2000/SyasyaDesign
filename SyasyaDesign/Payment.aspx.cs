using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SyasyaDesign
{
    public partial class Payment : System.Web.UI.Page
    {
        string pac = string.Empty;
        string pacNum = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtCard.Text = "";
            txtEmail.Text = "";
            txtPac.Text = "";
        }

        [Obsolete]
        protected void btnPac_Click(object sender, EventArgs e)
        {
            string host = "gmail.com";
            string num = "0123456789";
            int len = num.Length;
            
            int pacdigit = 4;
            string finalnum;
            int getindex;
            for(int i =0; i < pacdigit; i++)
            {
                do
                {
                    getindex = new Random().Next(0, len);
                    finalnum = num.ToCharArray()[getindex].ToString();
                } while (pac.IndexOf(finalnum) != -1);
            pac += finalnum;
            }
            
            using (MailKit.Net.Smtp.SmtpClient oSmtp = new MailKit.Net.Smtp.SmtpClient())
            {
                string Title = "PAC";
                string Content = "PAC is " + pac;

                try
                {
                    MimeKit.MimeMessage oMail = new MimeKit.MimeMessage();

                    oMail.From.Add(new MimeKit.MailboxAddress("PAC", "nelsoneng23072000@gmail.com"));

                    //Add email To
                    string emailaddr = txtEmail.Text;//Get email To list     
                    
                        if (!String.IsNullOrEmpty(emailaddr.Trim()))
                        {
                            oMail.To.Add(new MimeKit.MailboxAddress(emailaddr.Trim()));
                        }
                    

                    //Add Title, Content and Signature
                    oMail.Subject = Title;
                    var builder = new MimeKit.BodyBuilder();
                    builder.HtmlBody = Content;

                    // Now we just need to set the message body and we're done
                    oMail.Body = builder.ToMessageBody();

                    //Authenticate and Send email

                    oSmtp.Connect("smtp.gmail.com", 465, true);
                    oSmtp.Authenticate("knowi48@gmail.com", "1q2w3e4r5t#A");
                    oSmtp.Send(oMail);

                    btnConfirm.Enabled = true;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            pacNum = pac;
            if (txtCard.Text != "" && txtPac.Text == pac && txtEmail.Text != "")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Payment Successful')</script>");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Payment Fail')</script>");
            }
        }

    }
}