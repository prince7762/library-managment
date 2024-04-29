using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AllBook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-25HCAT1;Initial Catalog=LabManagmentSystem;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string s = "select * from book_table";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}