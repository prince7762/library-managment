using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Delete_Book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-25HCAT1;Initial Catalog=LabManagmentSystem;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "delete from book_table where book_id=" + TextBox1.Text + "";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Deleted')</script>");
       
    }
}