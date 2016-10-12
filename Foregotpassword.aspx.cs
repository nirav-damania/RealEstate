using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;



public partial class Foregotpassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void buttonsendmepassword_Click(object sender, EventArgs e)
    {
                try
        {
            DataSet ds = new DataSet();
            con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Karan\RealEstate\App_Data\Database.mdf;Integrated Security=True");
            {
                con.Open();
                cmd = new SqlCommand("select Email,Password from Reg where Email='" + txtemail.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Close();
            }
            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage Msg = new MailMessage();
                //Sender e-mail address.
                Msg.From = new MailAddress(txtemail.Text);
                //Recipient e-mail address.
                Msg.To.Add(txtemail.Text);
                Msg.Subject = "Your Password Details";
                Msg.Body = "Hi,<br/> Please check your Login Details <br/><br/> Your Email:" + ds.Tables[0].Rows[0]["Email"] + "<br/><br/> Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                //your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("karan1003113@gmail.com", "");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg=null;
                lblmsg.Text = "Your Password Details Sent to Your mail";
                //clear the textbox values
                txtemail.Text = "";
            }
            else
            {
                lblmsg.Text = "The Email you entered not exists.";

            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("{0}Exception caught.", ex);

        }



    }


    }
