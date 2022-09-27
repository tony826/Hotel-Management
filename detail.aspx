<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="detail.aspx.vb" Inherits="Hotel_Management.detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 324px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style4 {
            width: 50%;
            height: 183px;
        }
        .auto-style5 {
            width: 377px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">


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


        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" CssClass="auto-style3" ForeColor="#333333" GridLines="None" Height="374px" Width="642px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="rtype" HeaderText="rtype" SortExpression="rtype" />
                <asp:BoundField DataField="rno" HeaderText="rno" SortExpression="rno" />
                <asp:BoundField DataField="checkin" HeaderText="checkin" SortExpression="checkin" DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="checkout" HeaderText="checkout" SortExpression="checkout" DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost"/>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [name], [mobile], [rtype], [rno], [checkin], [checkout], [cost] FROM [book] WHERE ([unm] = @unm)" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="unm" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <br />


    </div>
</asp:Content>
