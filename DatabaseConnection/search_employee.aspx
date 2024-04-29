<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.master" AutoEventWireup="true" CodeFile="search_employee.aspx.cs" Inherits="search_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Enter Employee id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Height="46px" Text="Search" Width="104px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" Visible="false" runat="server">
            <table align="center">
                <tr>
                    <td>Employee id&nbsp;&nbsp; :</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Employee Name : </td>
                    <td><asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Employee Demp : </td>
                    <td><asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCCC"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Employee Salary : </td>
                    <td><asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCCC"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">&nbsp; 
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</asp:Content>

