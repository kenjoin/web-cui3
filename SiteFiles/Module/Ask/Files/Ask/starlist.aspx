<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.StarList" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Announcements" Src="include/announcements.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Weekstar" Src="include/weekstar.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Weekrank" Src="include/weekrank.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Rank" Src="include/rank.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Tips" Src="include/tips.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <ctrl:Theme runat="server"></ctrl:Theme>
</head>
<body>
    <!--头部-->
    <ctrl:Header runat="server"></ctrl:Header>
    <form id="myform" runat="server">
    <div class="main">
        <div class="hack10px">
        </div>
        <div class="box950">
            <div class="site c72bd">
                <a href="./" target="_self">问答首页</a> &gt; <span class="black">问答之星</span>
                <h1>
                    <span class="black">
                        <asp:Literal ID="ltlCatalog" runat="server"></asp:Literal></span></h1>
            </div>
            <div class="hack10px">
            </div>
            <div class="tab f14px">
                <div class="line_tab">
                </div>
            </div>
            <div class="hack10px">
            </div>
            <div class="left718">
                <div class="qnbox_l2 f14px">
                    <div class="box_con">
                        <p class="orange b">
                            欢迎来到问答之星殿堂</p>
                        <p class="black ln22">
                            在“问答之星”的身上，一定有许多值得我们学习的地方，让我们一同分享“问答之星”的成长经历吧。也许，下一个“问答之星”就是你！</p>
                    </div>
                </div>
                <div class="hack8px">
                </div>
                <div class="qnbox_l2 f14px">
                    <strong class="c61bd">历届问答之星</strong>
                    <p class="shadow">
                    </p>
                    <p class="hack5px">
                    </p>
                    <div class="list_star">
                        <ul class="ln22">
                            <asp:Repeater ID="rptStarList" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <p class="sp sp1 black">
                                        </p>
                                        <p class="sp pic">
                                            <span class="pic"><span class="mask"><%--<a href="#">
                                                <img src="" width="100" height="100" /></a>--%><asp:Literal ID="ltlUserHead" runat="server"></asp:Literal></span></span></p>
                                        <p class="sp sp3">
                                            <span class="black letter5">用户名：</span><asp:Literal ID="ltlUserName" runat="server"></asp:Literal><br />
                                            <span class="black">专精领域：</span><asp:Literal ID="ltlCatalog" runat="server"></asp:Literal>
                                            <br />
                                            <span class="black tl">精选回答：</span> <span class="con">
                                                <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                                            </span>
                                        </p>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <p class="clear">
                        </p>
                    </div>
                    <p class="hack8px">
                    </p>
                    <div style="margin-left: auto; margin-right: auto; width: 200px;">
                        <asp:PlaceHolder ID="phHolder" runat="server"></asp:PlaceHolder>
                    </div>
                    <p class="hack8px">
                    </p>
                </div>
                <div class="shadow">
                </div>
                <div class="hack8px">
                </div>
            </div>
            <div class="right232">
                <!--总积分排行-->
                <ctrl:Rank runat="server"></ctrl:Rank>
                <!--小贴士-->
                <ctrl:Tips runat="server"></ctrl:Tips>
            </div>
        </div>
    </form>
    <ctrl:Footer  runat="server"></ctrl:Footer>
</body>
</html>
