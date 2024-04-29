using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if  (DropDownList1.SelectedItem.Text == "Add Book")
            Response.Redirect("AddBook.aspx");
        else if (DropDownList1.SelectedItem.Text == "All Book") 
            Response.Redirect("AllBook.aspx");
        else if (DropDownList1.SelectedItem.Text == "Search Book")
            Response.Redirect("SearchBook.aspx");
        else if(DropDownList1.SelectedItem.Text=="Delete Book")
            Response.Redirect("Delete_Book.aspx");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text == "AddStudent") 
           Response.Redirect("Add_Student.aspx");
        else if(DropDownList2.SelectedItem.Text=="AllStudents")
            Response.Redirect("All_Students.aspx");
        else
            Response.Redirect("Search_Student.aspx");  
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedItem.Text == "IssueBook")
            Response.Redirect("IssueBook.aspx");
        else
            Response.Redirect("SubmitBook.aspx");
    }
  
}
