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
        con.Open();
        SqlCommand cmd = new SqlCommand("select s.sid,s.name,s.email,s.mobile,d.deptname,s.eduction,s.exprince from staff s,dept d where s.deptid=d.deptid", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        repeater1.DataSource = dt;
        repeater1.DataBind();
        con.Close();
    }
}