<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BookShop.WebUI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        userID:<asp:TextBox ID="TextBox_CustomerID" runat="server"></asp:TextBox>
        <br />
        <br />
        password:<asp:TextBox ID="TextBox_CustomerPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button_signup" runat="server" Text="登录" OnClick="Button_signup_Click" />
        <br />
        <br />
        --------------------------------------------------------<br />
        <br />
        Register userID:<asp:TextBox ID="TextBox_RegisterID" runat="server"></asp:TextBox>
        <br />
        <br />
        Register password:<asp:TextBox ID="TextBox_RegisterPassword" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button_signin" runat="server" Text="注册" OnClick="Button_signin_Click" />
    
        <br />
        --------------------------------------------------------<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookName" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="BookName" HeaderText="BookName" ReadOnly="True" SortExpression="BookName" />
                <asp:BoundField DataField="Writer" HeaderText="Writer" SortExpression="Writer" />
                <asp:BoundField DataField="PublishingHouse" HeaderText="PublishingHouse" SortExpression="PublishingHouse" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Page" HeaderText="Page" SortExpression="Page" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                <asp:BoundField DataField="Introduction" HeaderText="Introduction" SortExpression="Introduction" />
                <asp:ImageField DataImageUrlField="Photo" HeaderText="bhhhh">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="BookShop.AccessTask.BookShopDataClassesDataContext" EntityTypeName="" TableName="Book">
        </asp:LinqDataSource>
        <br />
        <asp:TextBox ID="TextBox_search" runat="server"></asp:TextBox>
        <asp:Button ID="Button_search" runat="server" OnClick="Button_search_Click" Text="Button" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
