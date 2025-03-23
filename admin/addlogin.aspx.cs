using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        MYCON m1 = new MYCON();
        con = m1.getcon();
        
    }
    protected void txtbtn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into login1 values('" + txtemail.Text + "','" + txtpwd.Text + "','"+txtrole.SelectedItem.ToString()+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Default.aspx");
    }
}