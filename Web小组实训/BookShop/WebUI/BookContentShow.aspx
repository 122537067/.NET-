<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookContentShow.aspx.cs" Inherits="BookShop.WebUI.BookContentShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserShow" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ThisContent" runat="server">
    <div class="sidebar fl" style="margin-top: 40px">
        <div class="title2"><span id="bookName" runat="server" class="fl">书名</span></div>
        <ul class="pic-list">
            <li>
                <a href="#">
                    <img id="img" runat="server" src="" style="width: 220px; height: 250px; padding: 1px; border: 1px solid #CCC" /></a>
            </li>
            <li style="font-size: 18px">
                <p id="writer" runat="server">作者：</p>
                <p id="pubic" runat="server">出版社：</p>
                <p id="time" runat="server">上传时间:</p>
                <p id="isbn" runat="server">ISBN:</p>
                <p style="text-align: center; margin-top: 20px">
                    <button id="btnLWord" runat="server" onserverclick="btnLWord_ServerClick" class="btn btn-info">留言评论此书</button>
                </p>
            </li>
        </ul>
    </div>
    <div class="list-right fr">
        <div class="title1"><span class="fl">作品简介</span></div>
        <div class="content">
            <%--<p>某某书画经营有限公司立足于文化产业的开发，以弘扬我国传统文化艺术、促进书画艺术市场的繁荣和规范为经营宗旨，推荐中青年艺术家，培育收藏群体，竭诚服务社会。我公司是一家有着良好品牌的专业文化经营公司，公司秉承先进的经营理念，完善的运作模式，历经十年的成功运营，已成长为省内书画艺术产业的领先企业。</p>
            <p>公司推行与国际惯例接轨的经纪代理制，以藏画于民为载体，推荐当代中青年优秀书画艺术家，推广艺术消费，培育收藏群体，拥有艺术财富。秉承诚信规范之原则，给出书画保真之承诺，抵制赝品，打造品牌。公司收藏有数千幅名家书画作品，具有长时间可持续发展之后劲。公司建有一个集资讯、交流、交易、服务于一体的大型书画专业网站，日均点击率达千余次，网上交易兴旺，客户遍布全国各地。公司长期拥有百余名签约合作书画艺术名家，可满足不同客户群体对艺术品收藏的不同喜好；公司拥有广泛的人脉资源和客户群体，以支持、激励着我们的事业持续稳定地发展。我们拥有一支包括书画艺术家、书画鉴定专家、银行理财顾问、市场营销精英在内的强有力的专业经营团队，以举办各类艺术展事、艺术活动、艺术论坛为主要营运模式，提升品牌，提升效益，使我们在这几年得到长足发展。公司愿意成为艺术家的发展园地，收藏家的良朋益友，企业家的投资通道以及合理配置市场资源的桥梁和纽带。</p>
            <p>姜平，笔名雯珺，昌平居士，现为中国书法家协会会员。"吟到兰花亦香之馆"主人，祖籍苏州阊门人，儿时过目不忘，曾被报导"天才"。出身于书香之家，89年考进中国美院书法篆刻专业，受业于沙孟海、刘口、章祖安诸师。毕业后在大学教书法专业很多时间在北京生活工作……善楹联、散文、金石学十几次入展并获奖由中国书协举办的展览。最近一次是2013.9月获中国书协举办首届农行杯电视书法大赛，获大奖（网上可查）现为专业书法创作，包括各种书体。</p>--%>
            <p id="ShowTxt" runat="server"></p>
        </div>
        <div class="clearfix"></div>
        <div class="share" style="margin-top:10px">
            <!-- JiaThis Button BEGIN -->
            <div class="jiathis_style_24x24">
                <a class="jiathis_button_qzone"></a>
                <a class="jiathis_button_tsina"></a>
                <a class="jiathis_button_tqq"></a>
                <a class="jiathis_button_weixin"></a>
                <a class="jiathis_button_renren"></a>
                <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                <%--<a class="jiathis_counter_style"></a>--%>
            </div>
            <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
            <!-- JiaThis Button END -->
        </div>
    </div>
</asp:Content>
