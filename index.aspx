<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Hotel_Management.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<style>
        #div1{
            
            background-color : blueviolet;
            height:100%;
            width:auto;
            background-repeat:no-repeat;
            background-image: url("https://source.unsplash.com/1600x900/?indoor");
            background-size:cover;
            display:flex;
            padding:80px;
           margin:auto;
           
        }
        #div2{
            border : 2px solid black;
            background-color : blueviolet;
            height:300px;
            width:800px;
            margin:267px 30px;
            background-image:url("Standard.png");
            background-size:cover;
            background-repeat:no-repeat;
            text-align:center;
        }
        #div3{
            border : 2px solid black;
            background-color : blueviolet;
            height:300px;
            width:800px;
            background-image:url("deluxe.jpg");
            background-size:cover;
            background-repeat:no-repeat;
            margin:267px 30px;
            text-align:center;
        }
        #div4{
            margin:267px 30px;
            border : 2px solid black;
            background-color : blueviolet;
            height:300px;
            width:800px;
            background-image:url("luxurious.jpg");
            background-size:cover;
            background-repeat:no-repeat;
            text-align:center;
        }
       
    .auto-style1 {
        font-size: xx-large;
    }
    .auto-style2 {
        text-align: center;
    }
    .divv{
        background-color:burlywood;
        text-align : center;
    }
    .auto-style3 {
        font-weight: bold;
        font-size: x-large;
        background-color:transparent;
        margin-left: 516px;
    }
    </style>
</head>
    <body>
        <form id="form1" runat="server">

        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" ForeColor="#6600CC" Height="55px" Text="Click Here To Login" Width="317px" BorderStyle="None" />
    <div id="div1" class="auto-style2">
        <br />
        <strong>
        <br />
        <br />
        </strong>
        <div id="div2" class="auto-style2">

        <strong>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="aqua" Text="Standard"></asp:Label>
        </strong>

    </div>
        <div id="div3">
            
            <strong>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style1" ForeColor="dodgerblue" Text="Deluxe"></asp:Label>
            </strong>
            
    </div>
        <div id="div4" class="auto-style2">

            <strong>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            
            <asp:Label ID="Label3" runat="server" CssClass="auto-style1" ForeColor="#def702" Text="Luxurious"></asp:Label>
            </strong>

    </div>
   </div>
        </form>
    </body>
</html>
