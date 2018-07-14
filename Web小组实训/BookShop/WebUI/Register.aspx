<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BookShop.WebUI.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Register {
            margin: auto;
            width: 43%;
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
    <div class="Register">
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Angsana New" Font-Size="XX-Large" ForeColor="#009900" Text="咸鱼"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Font-Names="Segoe Script" Font-Size="XX-Large" ForeColor="#66FF33" Text="xianyu"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="仿宋" Font-Size="XX-Large" ForeColor="#66FF33" Text="账号"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="注册咸鱼"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="邮箱"></asp:Label>
        <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="201px" BackColor="#FFFFCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMail" runat="server" ControlToValidate="txtMail" ErrorMessage="请输入用户名！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="密码"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" Height="21px" Width="201px" BackColor="#FFFFCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="请输入密码！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Size="Large" Text="确认密码"></asp:Label>
        <asp:TextBox ID="txtPasswordAgain" runat="server" Height="21px" Width="201px" BackColor="#FFFFCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ControlToValidate="txtPasswordAgain" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" ErrorMessage="密码与确认密码不一致！" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="名号"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" Height="21px" Width="201px" BackColor="#FFFFCC"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="请输入名号！" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
            <asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="#9999FF" Style="margin-right: 0px; margin-bottom: 0px" Text="&gt;有咸鱼账号了？"></asp:Label>&nbsp;<a href="/Login.aspx">登录账号</a>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#99FF66" BorderColor="#66FF33" Font-Bold="True" Font-Size="Large" Height="35px" Text="注册" Width="82px" OnClick="Button1_Click" class="btn" />

    </div>
</asp:Content>
