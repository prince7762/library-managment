using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Add_Student : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-25HCAT1;Initial Catalog=LabManagmentSystem;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "insert into Student_Table values("+TextBox1.Text+",'"+TextBox2.Text+"')";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        TextBox1.Text = TextBox2.Text = string.Empty;
        Response.Write("<script>alert('Student Added')</script>");
    }
}