<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsView2.aspx.cs" Inherits="DataView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="pid" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                <asp:BoundField DataField="productprice" HeaderText="productprice" SortExpression="productprice" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="pid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                <asp:BoundField DataField="productprice" HeaderText="productprice" SortExpression="productprice" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString4 %>" DeleteCommand="DELETE FROM [Product] WHERE [pid] = @pid" InsertCommand="INSERT INTO [Product] ([pid], [productname], [productprice]) VALUES (@pid, @productname, @productprice)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [productname] = @productname, [productprice] = @productprice WHERE [pid] = @pid">
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
