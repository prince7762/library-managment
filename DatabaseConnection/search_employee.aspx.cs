using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class search_employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
        
         string s = "Select * from emp where emp_id="+TextBox1.Text;
         DataSet ds = new DataSet();
         datacon dc = new datacon();
         ds = dc.GetData(s);
         TextBox2.Text = ds.Tables[0].Rows[0][0].ToString();
         TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
         TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();
         TextBox5.Text = ds.Tables[0].Rows[0][3].ToString();
         Panel1.Visible = true; 
    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       string s = "update emp set emp_id='"+TextBox2.Text+"',emp_name='"+TextBox3.Text+"', emp_demp='"+TextBox4.Text+"', emp_salary='"+TextBox5.Text+"' where emp_id='"+TextBox1.Text+"' ";
       datacon dc=new datacon();
       dc.SetData(s);
       Response.Write("<script>alert('Data Updated')</script>");
    }
}