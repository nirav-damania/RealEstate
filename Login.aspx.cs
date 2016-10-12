using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Buttonlogin_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Karan\RealEstate\App_Data\Database.mdf;Integrated Security=True");
        string str;
        con.Open();
        str = "Select count(*) from Reg where Email='" + txtemail.Text + "' and Password='" + txtpassword.Text + "'";
        cmd = new SqlCommand(str,con);
        int i = Convert.ToInt16(cmd.ExecuteScalar());
        if (i == 1)
        {
            Session["Email"] = txtemail.Text;
            Response.Redirect("Home.aspx");

        }
        else
        {
            lblmsg.Text = "Emailid and Password invalid";
        }
    }
}