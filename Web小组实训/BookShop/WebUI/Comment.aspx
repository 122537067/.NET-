<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" Inherits="BookShop.WebUI.Comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body, div, ul, li, p {
            margin: 0;
            padding: 0;
        }

        body {
            color: #666;
            font: 12px/1.5 Arial;
        }

        ul {
            list-style-type: none;
        }

        #star {
            position: relative;
            width: 600px;
            margin: 10px auto;
        }

            #star ul, #star span {
                float: left;
                display: inline;
                height: 19px;
                line-height: 19px;
            }

            #star ul {
                margin: 0 10px;
            }

            #star li {
                float: left;
                width: 24px;
                cursor: pointer;
                text-indent: -9999px;
                background: url(images/star.png) no-repeat;
            }

            #star strong {
                color: #f60;
                padding-left: 10px;
            }

            #star li.on {
                background-position: 0 -28px;
            }

            #star p {
                position: absolute;
                top: 20px;
                width: 100px;
                height: 25px;
                display: none;
                background: url(images/icon.gif) no-repeat;
                padding: 7px 10px 0;
            }

                #star p em {
                    color: #f60;
                    display: block;
                    font-style: normal;
                }
    </style>
    <script type="text/javascript">
        window.onload = function () {
            var oDi = document.getElementById("hiddenMessage");
            var oStar = document.getElementById("star");
            var aLi = oStar.getElementsByTagName("li");
            var oUl = oStar.getElementsByTagName("ul")[0];
            var oSpan = oStar.getElementsByTagName("span")[1];
            var oP = oStar.getElementsByTagName("p")[0];
            var i = iScore = iStar = 0;
            var aMsg = [
               "很不满意|差得太离谱，与卖家描述的严重不符，非常不满",
               "不满意|部分有破损，与卖家描述的不符，不满意",
               "一般|质量一般，没有卖家描述的那么好",
               "满意|质量不错，与卖家描述的基本一致，还是挺满意的",
               "非常满意|质量非常好，与卖家描述的完全一致，非常满意"
            ]
            for (i = 1; i <= aLi.length; i++) {
                aLi[i - 1].index = i;
                //鼠标移过显示分数
                aLi[i - 1].onmouseover = function () {
                    fnPoint(this.index);
                    //浮动层显示
                    oP.style.display = "block";
                    //计算浮动层位置
                    oP.style.left = oUl.offsetLeft + this.index * this.offsetWidth - 104 + "px";
                    //匹配浮动层文字内容
                    oP.innerHTML = "<em><b>" + this.index + "</b> 分 " + aMsg[this.index - 1].match(/(.+)\|/)[1] + "</em>"
                };
                //鼠标离开后恢复上次评分
                aLi[i - 1].onmouseout = function () {
                    fnPoint();
                    //关闭浮动层
                    oP.style.display = "none"
                };
                //点击后进行评分处理
                aLi[i - 1].onclick = function () {
                    iStar = this.index;
                    oP.style.display = "none";
                    oSpan.innerHTML = "<strong>" + (this.index) + " 分</strong> ";
                    oDi.value = this.index;
                }
            }
            //评分处理
            function fnPoint(iArg) {
                //分数赋值
                iScore = iArg || iStar;
                for (i = 0; i < aLi.length; i++) aLi[i].className = i < iScore ? "on" : "";
            }
        };
    </script>
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
            </li>
        </ul>
    </div>
    <div class="list-right fr">
        <div class="title1"><span>评论留言板</span></div>
        <div class="lyb">
            <div class="clearfix"></div>
            <dl>
                <asp:Repeater ID="LWordsShow" runat="server">
                    <ItemTemplate>
                        <dt><span><%#DataBinder.Eval(Container.DataItem, "Post_time")%></span><%#DataBinder.Eval(Container.DataItem, "Getcustomer.UserID")%></dt>
                        <dd><%#DataBinder.Eval(Container.DataItem, "Leave_word")%></dd>
                    </ItemTemplate>
                </asp:Repeater>
            </dl>
            <div style="margin-top: 10px">
                <input name="enews" type="hidden" id="enews" value="AddGbook" />
                <div><span class="wd105"><a class="red">*</a> 留言内容：</span><span><textarea name="lytext" cols="60" rows="5" id="lytext" runat="server"></textarea></span></div>
                <div id="star" style="margin-top: 10px">
                    <span>评分：</span>
                    <ul style="margin-left: 25px">
                        <li><a href="javascript:;">1</a></li>
                        <li><a href="javascript:;">2</a></li>
                        <li><a href="javascript:;">3</a></li>
                        <li><a href="javascript:;">4</a></li>
                        <li><a href="javascript:;">5</a></li>
                    </ul>
                    <span></span>
                    <p></p>
                </div>
                <div style="margin:40px">
                    <span class="wd105"></span>
                    <span>
                        <asp:Button ID="Submit" Text="提交" runat="server" OnClick="Submit_Click"/>
                        <asp:Button ID="Reset" Text="重置" runat="server" />
                    </span>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <input type="hidden" id="hiddenMessage" value=3 runat="server"/>
</asp:Content>
