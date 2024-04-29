<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="IssueBook.aspx.cs" Inherits="IssueBook" %>

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
            <asp:DropDownList ID="DropDownList4" runat="server" BackColor="#8A89A9" DataSourceID="SqlDataSource1" DataTextField="book_id" DataValueField="book_id" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                <asp:ListItem>101</asp:ListItem>
                <asp:ListItem>102</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabManagmentSystemConnectionString %>" SelectCommand="SELECT [book_id] FROM [book_table] ORDER BY [book_id]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Student id</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Issue Date</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" BackColor="#006699" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Submit Date</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" BackColor="#006699"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Book Name</td>
        <td class="text-center">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

