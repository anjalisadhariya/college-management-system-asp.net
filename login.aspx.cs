using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    MYCON m1=new MYCON();
    int lid = 0;
    string role = null;
    public SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtbtn_Click(object sender, EventArgs e)
    {
        con = m1.getcon();
        con.Open();
        SqlCommand cmd = new SqlCommand("select lid from login1 where emailid='" + txtemail.Text + "' and password='" + txtpwd.Text + "'", con);
        try
        {
            lid = Int32.Parse(cmd.ExecuteScalar().ToString());
        }
        catch (Exception)
        {
            Response.Redirect("login.aspx");
        }
        SqlCommand cmd1 = new SqlCommand("select role from login1 where lid="+lid+"", con);
        try
        {
            role = cmd1.ExecuteScalar().ToString();
        }
        catch (Exception)
        {
            Response.Redirect("login.aspx");
        }
        Session["lid"] = lid.ToString();
        if (role.Equals("admin") && lid == 1)
        {
            Response.Redirect("admin/default.aspx");
        }
        else if (role.Equals("principal") && lid > 1)
        {
            Response.Redirect("principal/default.aspx");
        }
        else if (role.Equals("staff") && lid > 1)
        {
            Response.Redirect("staff/default.aspx");
        }
        else if (role.Equals("student") && lid > 1)
        {
            Response.Redirect("student/default.aspx");
        }
        else
        {
            Response.Redirect("default.aspx");
        }
        con.Close();
    }
}