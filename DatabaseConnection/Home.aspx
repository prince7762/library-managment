<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<h1 class="text-left">
    <table class="w-full">
        <tr>
            <td class="auto-style1">Welcome to Library</td>
        </tr>
    </table>
</h1>
    <img style="width:100%; height:100vh;" src="Library.jpg" />
    
</asp:Content>

