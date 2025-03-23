using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class principal_Department : System.Web.UI.Page
{
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        MYCON m1 = new MYCON();
        con = m1.getcon();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from dept", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        repeater1.DataSource = dt;
        repeater1.DataBind();
        con.Close();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "")
        {
            Response.Redirect("Department.aspx");
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dept values('"+txtname.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Department.aspx");
        }
    }
}