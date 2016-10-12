using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Editprofile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void update_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Karan\RealEstate\App_Data\Database.mdf;Integrated Security=True");
        string str;
        con.Open();
        str = "update Reg set Address='" + Txtaddress.Text + "', Mobileno='" + Txtmobileno.Text + "' where Email='"+txtemail.Text+"'";
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        lblmsg.Text = "Update Successfully";
        con.Close();

    }

   
}