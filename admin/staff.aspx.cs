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
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from login1 where role='Staff'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        repeater1.DataSource = dt;
        repeater1.DataBind();
        con.Close();
    }
}