using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for MYCON
/// </summary>
public class MYCON
{
    public SqlConnection c1 = null;
	public MYCON()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public SqlConnection getcon()
    {
        c1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\sem-6 project\project\database\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30");
        return c1;
    }
}