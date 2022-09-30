<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="Hotel_Management.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            height: 202px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 0px;
            font-size: x-large;
        }
        .auto-style4 {
            text-align: center;
            height: 44px;
        }
        .auto-style5 {
            text-align: center;
            height: 55px;
        }
        #container{
            
            background-image: url("loginbg.jpg");
            height:900px;
            background-repeat:no-repeat;
            background-size:cover;
            
            
        }
        .auto-style6 {
            font-size: xx-large;
        }
        h1{
            color:red;
        }
        .auto-style7 {
            font-size: xx-large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id ="container">
            <br />
                        <marquee><h2>Hotel Royal Galaxy</h2></marquee>
            <br />
            <marquee><h1>Login Page</h1></marquee>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <h3>
                            <asp:Label ID="Label1" runat="server" Text="Username " ForeColor="Red" CssClass="auto-style6"></asp:Label>
                            </h3>
                    </td>
                    <td>
                        <strong>
                        <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="256px" CssClass="auto-style7"></asp:TextBox>
                        </strong>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <h3>
                            <asp:Label ID="Label2" runat="server" Text="Password" ForeColor="Red" CssClass="auto-style6"></asp:Label>
                            </h3>
                    </td>
                    <td>
                        <strong>
                        <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="258px" TextMode="Password" CssClass="auto-style7"></asp:TextBox>
                        </strong>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="47px" Text="Log In" Width="191px" BackColor="#99FF99" Font-Bold="True" ForeColor="Black" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                         <asp:LinkButton id="LinkButton1" runat="server" CssClass="auto-style6">Not Have An Account Register Here</asp:LinkButton>
                    &nbsp;</td>
                    <td class="auto-style4">
                         <asp:LinkButton id="LinkButton2" runat="server" CssClass="auto-style6">Forgot Password</asp:LinkButton>
                    </td>
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

        </div>
    </form>
</body>
</html>
