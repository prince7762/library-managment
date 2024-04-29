<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.master" AutoEventWireup="true" CodeFile="Delete_employee.aspx.cs" Inherits="Update_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
        .auto-style2 {
            height: 38px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form id="form1" runat="server">
            
        <table class="w-full">
            <tr>
                <td>Enter Employee id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Search" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                </td>
            </tr>
            </table>
        <asp:Panel ID="Panel1" Visible="false" runat="server">
            <table align="center">
            <tr>
                <td class="auto-style2">Employee Id :</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-left">Employee Name :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-left">Employee Demp :</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-left">Employee Salary :</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
            </asp:Panel>
    </form>
</asp:Content>

