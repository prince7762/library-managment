using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class IssueBook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-25HCAT1;Initial Catalog=LabManagmentSystem;Integrated Security=True");
    SqlCommand cmd, cmd2;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        DateTime CurrentDate = DateTime.Now;
        DateTime FutureDate = CurrentDate.AddDays(10);
        TextBox3.Text = CurrentDate.ToShortDateString();
        TextBox4.Text = FutureDate.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string s1 = "select * from issued_books Where Book_id="+ DropDownList4.Text +"";
        da = new SqlDataAdapter(s1, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            string s = "insert into issued_books values(" + Convert.ToInt32(DropDownList4.Text) + "," + TextBox2.Text + ", '" + TextBox3.Text + "', '" + TextBox4.Text + "', 'Issued')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();

            /* TextBox1.Text = TextBox2.Text = string.Empty;
            string s1 = "update book_table set book_available= 'No' ";
            cmd2 = new SqlCommand(s1, con);
            cmd2.ExecuteNonQuery(); */
            
            Response.Write("<script>alert('Book Issued')</script>");
        }
        else
            Response.Write("<script>alert('Book Already Issued')</script>");
        
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(DropDownList4.SelectedItem.Text);
        string getData = "SELECT * FROM book_table WHERE book_id = " + id;
        SqlDataAdapter da = new SqlDataAdapter(getData,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        TextBox5.Text = ds.Tables[0].Rows[0][1].ToString();

    }
}