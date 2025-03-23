using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class principal_accept : System.Web.UI.Page
{
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Int32.Parse(Request.QueryString["id"].ToString());
        MYCON m1 = new MYCON();
        con = m1.getcon();
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from admission where aid=" + id, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("admission.aspx");
    }
}