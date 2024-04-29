using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class productid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-25HCAT1;Initial Catalog=Prince;Integrated Security=True");
    SqlCommand cmd;
    string gen; 
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gen;
        if (RadioButton1.Checked)
            gen = "Male";
        else
            gen = "Female";

        string s = "insert into record1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + gen + "'," + TextBox4.Text + ",'" + TextBox5.Text + "')";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        Button1.Text = "Data Saved..";
    }
}