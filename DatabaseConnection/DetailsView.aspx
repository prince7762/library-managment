<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsView.aspx.cs" Inherits="Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="pid" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="Black" GridLines="None" Height="39px" Width="254px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="pid" HeaderText="Enter product id" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="productname" HeaderText="Enter Product Name" SortExpression="productname" />
                <asp:BoundField DataField="productprice" HeaderText="Enter Product Price" SortExpression="productprice" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <FooterTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </FooterTemplate>
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="pid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="296px" Width="380px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="Product Id" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
                <asp:BoundField DataField="productprice" HeaderText="Product Price" SortExpression="productprice" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString3 %>" DeleteCommand="DELETE FROM [Product] WHERE [pid] = @pid" InsertCommand="INSERT INTO [Product] ([pid], [productname], [productprice]) VALUES (@pid, @productname, @productprice)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [productname] = @productname, [productprice] = @productprice WHERE [pid] = @pid">
            <DeleteParameters>
                <asp:Parameter Name="pid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pid" Type="Int32" />
                <asp:Parameter Name="productname" Type="String" />
                <asp:Parameter Name="productprice" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productname" Type="String" />
                <asp:Parameter Name="productprice" Type="Int32" />
                <asp:Parameter Name="pid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
