<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EMPLogin.aspx.cs" Inherits="EMPLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color:mistyrose;
            width: 100%;
            height: 100vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
        <table >
            <tr>
                <td>Enter Id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Login" Width="83px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
