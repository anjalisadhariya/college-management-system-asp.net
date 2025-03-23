using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class principal_deletedept : System.Web.UI.Page
{
    SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        MYCON m1 = new MYCON();
        con = m1.getcon();
        con.Open();
        int id = Int32.Parse(Request.QueryString["id"].ToString());
        SqlCommand cmd = new SqlCommand("select a.name,a.surname,a.fathername,d.deptname,a.cast,a.birthdate,a.aid,a.seat_no,a.address,a.mobile,a.email,a.stream,a.omark,a.total_mark,a.pr,a.sid,a.confirm from admission a,dept d where a.confirm='yes' and a.applyfor=d.deptid and a.aid=" + id, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        repeater1.DataSource = dt;
        repeater1.DataBind();
        con.Close();
    }
}