﻿using System;
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
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into course values ('" + txtcname.Text + "','" + txttimeduration.Text + "','" + txtdescription.Text + "','" + txtfees.Text + "','" + txtwhereisjob.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("courseinfo.aspx");

    }
}