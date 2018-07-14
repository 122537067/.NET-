<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="BookShop.WebUI.SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserShow" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ThisContent" runat="server">
    <div class="title2"><span id="Msg" class="fl" runat="server">搜索“666666”</span></div>
    <div class="sidebar fl" style="margin-top:120px">
        <div class="title2"><a href="AllBook.aspx?show=newest" class="more fr">更多</a><span class="fl">新书推荐</span></div>
        <ul class="pic-list">
            <asp:Repeater ID="BestNewShow" runat="server">
                <ItemTemplate>
                    <li>
                        <a href="BookContentShow.aspx?ISBN=<%#DataBinder.Eval(Container.DataItem, "ISBN")%>" title="作者：<%#DataBinder.Eval(Container.DataItem, "Writer")%>">
                            <img src="<%#DataBinder.Eval(Container.DataItem, "Photo")%>" style="width: 220px; height: 250px; padding: 1px; border: 1px solid #CCC" /></a>
                        <p style="text-align: center"><a href=""><%#DataBinder.Eval(Container.DataItem, "BookName")%></a></p>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    <div class="list-right fr">
        <ul class="pic-list">
            <asp:Repeater ID="SearchResultShow" runat="server">
                <ItemTemplate>
                    <li>
                        <a href="BookContentShow.aspx?ISBN=<%#DataBinder.Eval(Container.DataItem, "ISBN")%>" title="作者：<%#DataBinder.Eval(Container.DataItem, "Writer")%>">
                            <img src="<%#DataBinder.Eval(Container.DataItem, "Photo")%>" /></a>
                        <p><a href=""><%#DataBinder.Eval(Container.DataItem, "BookName")%></a></p>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>
