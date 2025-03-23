
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        MYCON m1 = new MYCON();
        con = m1.getcon();
    }
    protected void txtbtn_Click(object sender, EventArgs e)
    {
        int lid = 0;
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into login1 values('"+txtemail.Text+"','"+txtpassword.Text+"','student')", con);
        cmd.ExecuteNonQuery();
        SqlCommand cmd1 = new SqlCommand("select max(lid) from login1", con);
        lid = Int32.Parse(cmd1.ExecuteScalar().ToString());
        SqlCommand cmd2 = new SqlCommand("insert into member values("+lid+",'"+txtname.Text + "','" + txtaddress.Text + "','"+txtmobile.Text+"')", con);
        cmd2.ExecuteNonQuery();
        con.Close();
        Response.Redirect("login.aspx");
    }
    protected void txtmobile_TextChanged(object sender, EventArgs e)
    {

    }
}