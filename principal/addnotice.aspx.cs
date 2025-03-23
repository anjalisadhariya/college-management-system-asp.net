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
    }
    protected void txtbtn_Click(object sender, EventArgs e)
    {
        String s1 = dd.SelectedItem.ToString() + "/" + mm.SelectedItem.ToString() + "/" + yy.SelectedItem.ToString();
        int deptid = Int32.Parse(DropDownList1.SelectedValue.ToString());

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into notice values ('" + txtntital.Text + "'," + deptid + ",'" + txtdescription.Text + "','" + s1 + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("notice.aspx");

    }
}