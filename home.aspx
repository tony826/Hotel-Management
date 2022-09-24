<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="home.aspx.vb" Inherits="Hotel_Management.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>
        #div1{
            border : 2px solid black;
            background-color : blueviolet;
            height:700px;
            width:auto;
            background-repeat:no-repeat;
            background-image: url("https://source.unsplash.com/1600x900/?hotels");
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
        }
       
    .auto-style1 {
        font-size: x-large;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        font-weight: bold;
        font-size: x-large;
        background-color:transparent;
    }
    </style>
    <div id="div1" class="auto-style2">
        <br />
        <strong>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style1" ForeColor="#6699FF"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" ForeColor="Red" Height="47px" Text="LogIn" Width="114px" CssClass="auto-style3" />
        </strong>
    <div id="div2" class="auto-style2">

        <br />
        <br />

        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="#6699FF" Text="Standard"></asp:Label>
        </strong>

    </div>
        <div id="div3" class="auto-style2">

            <br />
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style1" ForeColor="#6699FF" Text="Deluxe"></asp:Label>
            </strong>
            
    </div>
        <div id="div4" class="auto-style2">

            <strong>
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="auto-style1" ForeColor="#6699FF" Text="Luxurious"></asp:Label>
            </strong>

    </div>
   </div>
</asp:Content>
