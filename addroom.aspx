<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addroom.aspx.vb" Inherits="Hotel_Management.addroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
            height: 321px;
            margin-top: 20px;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            font-family: 'Brush Script MT';
            font-size: xx-large;
            background-color : transparent;
        }
        .auto-style4 {
            font-family: 'Brush Script MT';
            font-size: xx-large;
            background-color : transparent;
            font-weight: bold;
            margin-left: 182px;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .s1{
            background-image: url("deluxe.jpg");
            background-size:cover;
            height:100vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="s1">
            <asp:Menu ID="Menu1" runat="server" BackColor="#99CCFF" ForeColor="White" Height="40px" Orientation="Horizontal" Width="100%">
                <Items>
                    <asp:MenuItem Text="Add Rooms" Value="Add Rooms" NavigateUrl="~/addroom.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/mngs.aspx" Text="Home" Value="New Item"></asp:MenuItem>
                    <asp:MenuItem Text="Change Password" Value="Change Password" NavigateUrl="~/edit.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Log Out" Value="Log Out"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle HorizontalPadding="55px" ItemSpacing="80px" />
                <StaticMenuStyle HorizontalPadding="35px" VerticalPadding="10px" />
            </asp:Menu>
                <br />
                <br />
            <marquee><h2>Hotel Royal Galaxy</h2></marquee>
            <h2><strong>
              <mariquee>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></mariquee> 
                </strong></h2>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Room Type" ForeColor="Red"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="rtype" DataValueField="rtype" Height="28px" Width="111px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\Hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [rtype] FROM [hotel]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Room No" ForeColor="Red"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Capacity" ForeColor="Red"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text="Status" ForeColor="Red"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="st" DataValueField="st" Height="28px" Width="111px" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [st] FROM [hotel]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style3" Text="Price" ForeColor="Red"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="51px" Text="Add" Width="163px" ForeColor="Red" />
                        </strong></td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
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
