using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SubmitBook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-25HCAT1;Initial Catalog=LabManagmentSystem;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter da ;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string s = "Select * from  issued_books where Book_id="+TextBox1.Text+" AND status = 'Issued' ";
        da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count==0)
        {
            Response.Write("<script>alert('This book is not issued yet')</script>");
        }
        else
        {
            Panel1.Visible = true;
           string s2 = "Select * from book_table where Book_id=" + TextBox1.Text;
            da = new SqlDataAdapter(s2, con);
            DataSet ds2 = new DataSet();
            da.Fill(ds2); 
            TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][0].ToString();
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    { 
        string submit="submit";
        string s = "update issued_books set status='"+submit+"' where Book_id="+TextBox1.Text+"";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Book Submited')</script>");
    }
}