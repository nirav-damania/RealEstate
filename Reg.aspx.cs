using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Reg : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Buttonsubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Karan\RealEstate\App_Data\Database.mdf;Integrated Security=True");
        string str1;
        con.Open();
        str1="Select * from Reg where Email='"+txtemail.Text+"'";
        cmd=new SqlCommand(str1,con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            lblmsg.Text = "Emailid Allready Registerd";
        }
        else
        {


            string str;
            con.Close();
            con.Open();
            str = "Insert into Reg values('" + txtemail.Text + "','" + txtpassword.Text + "','" + txtcomper.Text + "','" + Txtmobileno.Text + "','" + txtaddress.Text + "','" + ddlstate.SelectedItem.Text + "','" + ddlcity.SelectedItem.Text + "','" + txtpincode.Text + "')";
            cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Insert Successfully";
            con.Close();

        }
    }
}