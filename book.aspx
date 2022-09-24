<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="book.aspx.vb" Inherits="Hotel_Management.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        div{
            background-image: url("https://source.unsplash.com/1600x900/?indoor");
            background-size:cover;
            /*height:900px;*/
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">

       <marquee> <h2><strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" ForeColor="Red"></asp:Label>
            </strong></h2></marquee>
        
       
<!--<img src = "https://source.unsplash.com/1600x900/?rooms" class="img">-->
        
        
        
        <table align="center" class="auto-style4">
            <tr>
                <td><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Name" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Mobile" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Room Type" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="rtype" DataValueField="rtype" Height="81px" Width="140px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [rtype] FROM [hotel]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Room No" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="rno" DataValueField="rno" Height="81px" Width="140px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [rno] FROM [hotel] WHERE (([rtype] = @rtype) AND ([st] = @st))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="rtype" PropertyName="SelectedValue" Type="String" />
                            <asp:Parameter DefaultValue="Available" Name="st" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style5" Text="Room Status" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="st" DataValueField="st" Height="81px" Width="140px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [st] FROM [hotel] WHERE ([rno] = @rno)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="rno" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style5" Text="Room Price" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="price" DataValueField="price" Height="81px" Width="140px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [price] FROM [hotel] WHERE ([rno] = @rno)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="rno" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style5" Text="Check In Date" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Height="34px" TextMode="DateTime" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style5" Text="Check Out Date" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" Height="34px" TextMode="Date" Width="245px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">&nbsp;<asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="136px"></asp:TextBox>
                    <strong>&nbsp;<asp:Button ID="Button1" runat="server" Height="35px" Text="Book" Width="103px" />
                    </strong></td>
            </tr>
        </table>
        
        
        
    </div>
</asp:Content>
