<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Reg.aspx.vb" Inherits="Hotel_Management.Reg" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Mangement</title>
  
    <style type="text/css">
        .auto-style1 {
            width: 880px;
            height: 408px;
           margin:auto;
        }
        .auto-style3 {
            text-align: center;
            margin :auto;
            width: 169px;
        }
        .auto-style4 {
            text-align: center;
            width: 169px;
        }
        .auto-style5 {
            width: 1071px;
        }
        .auto-style6 {
            font-size: xx-large;
            font-weight: bold;
            margin-left: 47px;
            background-color: transparent;
        }
        .auto-style7 {
            font-weight: bold;
            font-size: xx-large;
            background-color: transparent;
        }
        div{
            
            background-image: url("https://source.unsplash.com/1600x900/?indoor");
            
        }
        .txt{
            border:5px solid black;
            border-top-left-radius:10px;
            border-bottom-right-radius:10px;
        }
        
        .auto-style8 {
            margin-left: 19px;
            background-color : transparent;
            font-size: xx-large;
            margin-top: 0px;
        }
        *{
            font-family: 'Brush Script MT';
        }
        
        .auto-style9 {
            font-size: xx-large;
        }
        .auto-style10 {
            border: 5px solid black;
            border-top-left-radius: 10px;
            border-bottom-right-radius: 10px;
            font-size: xx-large;
        }
        h1{
            color:red;
        }
        </style>
  
    
  
    </head>
<body>
    <form id="form1" runat="server">
        <div>
           <marquee><h1>Registration Page</h1></marquee>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label1" runat="server" Text="Username" ForeColor="Red" CssClass="auto-style9"></asp:Label>
                            </strong>
                    </td>
                    <td class="auto-style5">
                        <strong>
                        <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="250px" CssClass="auto-style10"></asp:TextBox>
                        </strong>&nbsp;
                        &nbsp; 
                        <strong> 
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style9" ForeColor="Red"></asp:Label>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="57px" Text="Check Username" Width="266px" ForeColor="Red" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <strong>
                        <asp:Label ID="Label2" runat="server" Text="Email" ForeColor="Red" CssClass="auto-style9"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style5">
                        <strong>
                        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="250px" TextMode="Email" CssClass="auto-style10"></asp:TextBox>
                        </strong>&nbsp;<strong><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter email in valid format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style9"></asp:RegularExpressionValidator>
                        </strong>&nbsp;<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="Red" CssClass="auto-style9"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style5">
                        <strong>
                        <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="250px" TextMode="Password" CssClass="auto-style10"></asp:TextBox>
                        </strong>&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label5" runat="server" Text=" Confirm Password" ForeColor="Red" CssClass="auto-style9"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style5">
                        <strong>
                        <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="250px" TextMode="Password" CssClass="auto-style10"></asp:TextBox>
                        </strong>&nbsp;&nbsp;<strong><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox5" ErrorMessage="Enter Same Password" ForeColor="Red" CssClass="auto-style9"></asp:CompareValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <strong>
                        <asp:Label ID="Label4" runat="server" Text="Mobile" ForeColor="Red" CssClass="auto-style9"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style5">
                        <strong>
                        <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="250px" TextMode="Phone" CssClass="auto-style10"></asp:TextBox>
                        </strong>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <h1>
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style7" ForeColor="Red" />
                            </h1>
                    </td>
                    <td class="auto-style5">
                        <h1>
                        <asp:Button ID="Button2" runat="server" Text="Log In" CssClass="auto-style6" ForeColor="Red" />
                            </h1>
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
