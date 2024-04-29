<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productid.aspx.cs" Inherits="productid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
            width: 448px;
        }
        .auto-style4 {
            width: 448px;
        }
        .auto-style5 {
            height: 33px;
            width: 377px;
        }
        .auto-style6 {
            width: 377px;
        }
        .auto-style7 {
            height: 33px;
            width: 332px;
        }
        .auto-style8 {
            width: 332px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">Enter Student Name:</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">Enter Father Name :</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Enter Mother Name :</td>
                <td class="auto-style2" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">Select Your Gender :</td>
                <td colspan="2">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="asd" Text="Male" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="asd" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Enter Mobile Number :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Correct Number" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{10}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style5">Enter Email :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Correct Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Delete" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button3" runat="server" Text="Update" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Search" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
