<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Delete_Book.aspx.cs" Inherits="Delete_Book" %>

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
            <td class="auto-style2">Enter id:</td>
            <td class="text-center">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
            </td>
        </tr>
    </table>
</asp:Content>

