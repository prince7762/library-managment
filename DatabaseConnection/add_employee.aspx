<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.master" AutoEventWireup="true" CodeFile="Add_employee.aspx.cs" Inherits="add_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table class="w-full">
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;</td>
                <td class="text-left">
                    &nbsp;</td>
            </tr>
            <tr>
                
                <td class="text-center">&nbsp;Enter Emp Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">&nbsp;&nbsp;&nbsp; Enter Emp Name : &nbsp;&nbsp;&nbsp; </td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center"> Enter Emp&nbsp; Demp: </td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">Enter Emp Salary :</td>
                <td class="text-left">
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Button ID="Button1" runat="server" Height="58px" OnClick="Button1_Click" Text="Add" Width="118px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>

