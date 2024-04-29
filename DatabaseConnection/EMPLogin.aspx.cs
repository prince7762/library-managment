using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class EMPLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "Select * from login where id='" + TextBox1.Text + "'and pass='"+TextBox2.Text+"'";
        datacon dc = new datacon();
        DataSet ds = new DataSet();
        ds = dc.GetData(s);
        Response.Redirect("EHome.aspx");

    }
}