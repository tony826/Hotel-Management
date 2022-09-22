<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="bokking.aspx.vb" Inherits="Hotel_Management.bokking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 258px;
        }
        #d1{
            background-image:url("https://source.unsplash.com/1600x900/?indoor")
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="d1">


            <asp:Menu ID="Menu1" runat="server" BackColor="#99CCFF" ForeColor="White" Height="40px" Orientation="Horizontal" Width="100%">
                <Items>
                    <asp:MenuItem NavigateUrl="~/addroom.aspx" Text="Add Rooms" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/edit.aspx" Text="Change Password" Value="Change Password"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/about.aspx" Text="About" Value="About"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/lg.aspx" Text="Log Out" Value="Log Out"></asp:MenuItem>
                    <asp:MenuItem Text="Bookings" Value="Bookings" NavigateUrl="~/bokking.aspx"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle HorizontalPadding="80px" ItemSpacing="200px" />
                <StaticMenuStyle HorizontalPadding="100px" VerticalPadding="10px" />
                <StaticSelectedStyle ItemSpacing="50px" />
            </asp:Menu>
            <br />
           <marquee> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></marquee>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <div class="auto-style1">
                <strong>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="353px" Width="887px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="rtype" HeaderText="Room Type" SortExpression="rtype" />
                        <asp:BoundField DataField="rno" HeaderText="Room No" SortExpression="rno" />
                        <asp:BoundField DataField="checkin" HeaderText="Check In" SortExpression="checkin" />
                        <asp:BoundField DataField="checkout" HeaderText="Check Out" SortExpression="checkout" />
                        <asp:BoundField DataField="cost" HeaderText="Total Cost" SortExpression="cost" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                </strong>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />


        </div>
    </form>
</body>
</html>
