using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class add_employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "insert into emp values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        datacon dc = new datacon();
        dc.SetData(s);
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = string.Empty;
        Response.Write("<script>alert('Data Submited')</script>");
    }

}