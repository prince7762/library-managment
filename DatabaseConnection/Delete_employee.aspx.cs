using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Update_employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
protected void Button1_Click1(object sender, EventArgs e)
{
    string s="Select * from emp where emp_id="+TextBox1.Text;
    DataSet ds= new DataSet();
    datacon dc=new datacon();
    ds=dc.GetData(s);
        TextBox2.Text = ds.Tables[0].Rows[0][0].ToString();
        TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
        TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();
        TextBox5.Text = ds.Tables[0].Rows[0][3].ToString();
        Panel1.Visible = true;
      
    
}
protected void Button2_Click(object sender, EventArgs e)
{
    string s = "delete from emp where emp_id=" + TextBox1.Text + "";
     datacon dc=new datacon();
     dc.SetData(s);

}
}