<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="chng.aspx.vb" Inherits="Hotel_Management.chng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style type="text/css">

        body{
            font-family: 'Brush Script MT';
            font-size :x-large;
        }
        .auto-style1 {
            width: 50%;
            height: 368px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            text-align: center;
            height: 41px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            font-size: x-large;
            margin-left: 21px;
            font-weight: bold;
            background-color : transparent;
        }
        .auto-style7 {
            font-size: x-large;
            font-weight: bold;
            background-color : transparent;
            
        }
        #edit{
            background-image: url("https://source.unsplash.com/1600x900/?indoor");
        }
    .auto-style8 {
        text-align: center;
        height: 73px;
    }
    .auto-style9 {
        height: 73px;
    }
    </style>
    <div id="edit">
        &nbsp;<br />
       <marquee> <h2 class="auto-style2">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" ForeColor="Red"></asp:Label>
            </strong></h2></marquee>
        <br />
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Username" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Old Password" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="New Password" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text="Confirm Password" ForeColor="Red"></asp:Label>
                    </strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2"><strong>
                    <asp:Button ID="Update" runat="server" CssClass="auto-style7" Text="Update" ForeColor="Red" />
&nbsp;
                    <asp:Button ID="Cancel" runat="server" CssClass="auto-style6" Text="Cancel" ForeColor="Red" />
                    </strong></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
