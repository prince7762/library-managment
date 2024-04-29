<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SubmitBook.aspx.cs" Inherits="SubmitBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 118px;
        }
        .auto-style4 {
            color: #FFFFFF;
            width: 118px;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-full">
        <tr>
            <td class="auto-style5">Search Book</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" Text="Search" Width="104px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
    <asp:Panel ID="Panel1" Visible="false" runat="server">
    <table align="center">
        <tr>
            <td class="auto-style4">Student id</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Book Id</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: center">

                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />

            </td>
        </tr>
    </table>
        </asp:Panel>
</asp:Content>

