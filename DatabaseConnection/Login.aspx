<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            color: #FF0000;
        }
       
        .container{
            display:flex;
            justify-content:center;
            align-items:center;
            background-color:darkgrey;
             width:100%;
             height: 219px;
            
        }

    </style>
</head>
<body style="height: 527px">
    <form id="form1" runat="server">
    <div class="container">
    
            <table>
            <tr>
                <td style="text-align: center; color:red; font-size: x-large" >LOGIN</td>
            </tr>
            <tr>
                <td>Enter ID :<br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter Password :<br />
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOGIN" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
