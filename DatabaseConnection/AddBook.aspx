<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="AddBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
    .auto-style2 {
        text-align: center;
        color: #FFFFFF;
    }
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-full">
    <tr>
        <td class="auto-style2">Book id</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Solid" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Book Name</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Solid" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Author</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderStyle="Solid" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Subject</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderStyle="Solid" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center" class="auto-style1">
            <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" Text="Add Book" Width="118px" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
</table>
</asp:Content>

