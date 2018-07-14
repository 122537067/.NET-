<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BookShop.WebUI.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserShow" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ThisContent" runat="server">
    <div class="left fl">
        <div class="zxzp mt10">
            <div class="title1"><a href="AllBook.aspx?show=newest" class="more fr">更多</a><span class="fl">最新书籍</span></div>
            <div class="zp-gd">
                <ul>
                    <asp:Repeater ID="NewestBooksShow" runat="server">
                        <ItemTemplate>
                            <li><a href="BookContentShow.aspx?ISBN=<%#DataBinder.Eval(Container.DataItem, "ISBN")%>">
                                <img src="<%#DataBinder.Eval(Container.DataItem, "Photo")%>" /><p><%#DataBinder.Eval(Container.DataItem, "BookName")%></p>
                            </a></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <div class="fr" style="margin-top: 50px">
        <div class="title2 mt10"><span>联系我们</span></div>
        <div class="neirong">
            <img src="images/CallWe.png" />
        </div>
    </div>
    <div>
        <div class="jczp fl ml20 mt10" style="margin-left: -5px">
            <div class="title1"><a href="AllBook.aspx?show=popular" class="more fr">更多</a><span class="fl">精彩书籍</span></div>
            <ul>
                <asp:Repeater ID="PopularBooksShow" runat="server">
                    <ItemTemplate>
                        <li><a href="BookContentShow.aspx?ISBN=<%#DataBinder.Eval(Container.DataItem, "ISBN")%>">
                            <img src="<%#DataBinder.Eval(Container.DataItem, "Photo")%>" /></a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        <div class="fl" style="margin-top: 10px; margin-left: 15px; width: 252px">
            <div class="title2"><span>团队简介</span></div>
            <p class="tou"></p>
            <div class="neirong" style="text-align: center">
                <p>黄炜轩</p>
                <p>陈宇江</p>
                <p>陈高满</p>
            </div>
            <p class="di"></p>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="friendLink mt10">
        <div class="title1"><span>友情链接</span></div>
        <table style="width: 100%; border: 0; align-content: center">
            <tr>
                <td style="text-align: center"><a href="https://www.dushu.com/" target="_blank">读书网</a></td>
                <td><a href="https://www.qidian.com/" target="_blank">起点中文网</a></td>
                <td><a href="http://www.zongheng.com/" target="_blank">纵横中文网</a></td>
                <td><a href="https://book.douban.com/" target="_blank">豆瓣读书网</a></td>
                <td><a href="http://yuedu.163.com/" target="_blank">网易云阅读</a></td>
                <td><a href="http://book.sina.com.cn/" target="_blank">新浪读书</a></td>
                <td><a href="http://book.qq.com/" target="_blank">QQ阅读</a></td>
            </tr>
        </table>
    </div>
</asp:Content>
