<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="mngs.aspx.vb" Inherits="Hotel_Management.mngsaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-image: url("mngs.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
        .auto-style2 {
            margin-left: 344px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div>
                
                <br />
                
            <asp:Menu ID="Menu1" runat="server" BackColor="#99CCFF" ForeColor="White" Height="40px" Orientation="Horizontal" Width="100%">
                <Items>
                    <asp:MenuItem Text="Add Rooms" Value="Home" NavigateUrl="~/addroom.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Bookings" Value="Bookings" NavigateUrl="~/bokking.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Change Password" Value="Change Password" NavigateUrl="~/chng.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Log Out" Value="Log Out" NavigateUrl="~/lg.aspx"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle HorizontalPadding="80px" ItemSpacing="200px" />
                <StaticMenuStyle HorizontalPadding="100px" VerticalPadding="10px" />
                <StaticSelectedStyle ItemSpacing="50px" />
            </asp:Menu>
                <br />
                <br />
                            <marquee><h2>Hotel Royal Galaxy</h2></marquee>
                <br />
                <br />
       <marquee> <h2>
        <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
        </h2></marquee>
        

        <br />
                <div class="auto-style1">
        <br />
        <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="501px" Width="689px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="rtype" HeaderText="Room Type" SortExpression="rtype" />
                            <asp:BoundField DataField="rno" HeaderText="Room No." SortExpression="rno" />
                            <asp:BoundField DataField="pr" HeaderText="Persons" SortExpression="pr" />
                            <asp:BoundField DataField="st" HeaderText="Room Status" SortExpression="st" />
                            <asp:BoundField DataField="price" HeaderText="Cost" SortExpression="price" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [hotel] WHERE [Id] = @original_Id AND [rtype] = @original_rtype AND [rno] = @original_rno AND [pr] = @original_pr AND [st] = @original_st AND [price] = @original_price" InsertCommand="INSERT INTO [hotel] ([rtype], [rno], [pr], [st], [price]) VALUES (@rtype, @rno, @pr, @st, @price)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [rtype], [rno], [pr], [st], [price] FROM [hotel]" UpdateCommand="UPDATE [hotel] SET [rtype] = @rtype, [rno] = @rno, [pr] = @pr, [st] = @st, [price] = @price WHERE [Id] = @original_Id AND [rtype] = @original_rtype AND [rno] = @original_rno AND [pr] = @original_pr AND [st] = @original_st AND [price] = @original_price">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_rtype" Type="String" />
                            <asp:Parameter Name="original_rno" Type="Int32" />
                            <asp:Parameter Name="original_pr" Type="Int32" />
                            <asp:Parameter Name="original_st" Type="String" />
                            <asp:Parameter Name="original_price" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="rtype" Type="String" />
                            <asp:Parameter Name="rno" Type="Int32" />
                            <asp:Parameter Name="pr" Type="Int32" />
                            <asp:Parameter Name="st" Type="String" />
                            <asp:Parameter Name="price" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="rtype" Type="String" />
                            <asp:Parameter Name="rno" Type="Int32" />
                            <asp:Parameter Name="pr" Type="Int32" />
                            <asp:Parameter Name="st" Type="String" />
                            <asp:Parameter Name="price" Type="Int32" />
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_rtype" Type="String" />
                            <asp:Parameter Name="original_rno" Type="Int32" />
                            <asp:Parameter Name="original_pr" Type="Int32" />
                            <asp:Parameter Name="original_st" Type="String" />
                            <asp:Parameter Name="original_price" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
        </div>
    </form>
</body>
</html>
