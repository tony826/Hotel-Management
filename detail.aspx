<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="detail.aspx.vb" Inherits="Hotel_Management.detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 50%;
            height: 183px;
        }
        .auto-style5 {
            width: 377px;
        }
        .auto-style6 {
            margin-left: 315px;
        }
        #d{
            background-image:url("homebg.jpg");
            background-size:cover;
            background-repeat:no-repeat;
            height:100vh;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2" id="d">


        <br />
        <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style1"></asp:Label>
        <br />
        <br />
        </strong>
        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Room No."></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="Checkin Date"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="34px" TextMode="Date" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="35px" Text="Cancel" Width="157px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style6" DataSourceID="SqlDataSource1" Height="420px" Width="789px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="unm" HeaderText="Username" SortExpression="unm" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="rtype" HeaderText="Room Type" SortExpression="rtype" />
                <asp:BoundField DataField="rno" HeaderText="Room No." SortExpression="rno" />
                <asp:BoundField DataField="checkin" HeaderText="Check In" SortExpression="checkin" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="checkout" HeaderText="Check Out" SortExpression="checkout" DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [unm], [name], [mobile], [rtype], [rno], [checkin], [checkout], [cost] FROM [book]"></asp:SqlDataSource>


        <br />
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <br />
        <br />
        <br />
        <br />


    </div>
</asp:Content>
