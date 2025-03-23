﻿using System;
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
        SqlCommand cmd = new SqlCommand("select a.name,a.surname,a.fathername,d.deptname,a.cast,a.birthdate,a.aid from admission a,dept d where a.confirm='yes' and a.applyfor=d.deptid", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        repeater1.DataSource = dt;
        repeater1.DataBind();
        con.Close();
    }


    protected void btndeptid_Click(object sender, EventArgs e)
    {
        int id = Int32.Parse(DropDownList1.SelectedValue.ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select a.name,a.surname,a.fathername,d.deptname,a.cast,a.birthdate,a.aid from admission a,dept d where a.confirm='yes' and a.applyfor=d.deptid and a.applyfor=" + id, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        repeater1.DataSource = dt;
        repeater1.DataBind();
        con.Close();
    }
}