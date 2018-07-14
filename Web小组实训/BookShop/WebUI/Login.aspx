<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookShop.WebUI.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Login {
            margin: auto;
            width: 40%;
            padding: 10px;
        }

        .btn {
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserShow" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ThisContent" runat="server">
    <div class="Login">
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Angsana New" Font-Size="XX-Large" ForeColor="#009900" Text="咸鱼"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#66FF33" Text="xianyu"></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="仿宋" Font-Size="XX-Large" ForeColor="#66FF33" Text="账号"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="登录咸鱼"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="账号"></asp:Label>
        <asp:TextBox ID="txtAccounts" runat="server" Height="20px" Width="201px" BackColor="#FFFFCC"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="密码"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" Height="21px" Width="201px" BackColor="#FFFFCC" TextMode="Password"></asp:TextBox>
        <br />
        &nbsp;<br />
        <br />
            <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="#9999FF" Style="margin-right: 0px; margin-bottom: 0px" Text="&gt;还没咸鱼账号？"></asp:Label><a href="/Register.aspx">注册账号</a><br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#99FF66" BorderColor="#66FF33" Font-Bold="True" Font-Size="Large" Height="35px" Text="登录" Width="82px" OnClick="Button1_Click" class="btn" />
    </div>
</asp:Content>
