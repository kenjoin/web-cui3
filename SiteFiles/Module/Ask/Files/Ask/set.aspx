<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Set" %>

<%@ Register TagPrefix="page" Namespace="SiteServer.Ask.Controls" Assembly="SiteServer.Ask" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Catalogs" Src="include/catalogs.ascx" %>
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
                <a href="./" target="_self">问答首页</a> &gt;
                <h1>
                    <span class="black"><asp:Literal ID="ltlCatalog" runat="server"></asp:Literal></span></h1>
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
                    <strong class="c61bd">
                        <asp:Literal ID="ltlTitle" runat="server"></asp:Literal></strong>
                    <p class="shadow">
                    </p>
                    <p class="hack5px">
                    </p>
                    <div class="list_com">
                        <dl class="ln29">
                            <dt class="grey"><span class="sp1">标题(<asp:Literal ID="ltlCounts" runat="server"></asp:Literal>)</span><span
                                class="sp2">回答数</span><span class="sp3">状态</span><span class="sp4">提问时间</span>
                            </dt>
                            <asp:DataList ID="dlQuestionList" runat="server">
                            	<ItemTemplate>
                                    <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                                </ItemTemplate>
                            </asp:DataList>
                        </dl>
                    </div>
                    <p class="hack8px">
                    </p>
                    <div style="margin-left: auto; margin-right: auto; width: 200px;">
                        <page:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></page:sqlpager>
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
                
                <!--公告区-->
                <ctrl:Announcements  TotalNum="3" OpenWin="True" runat="server"></ctrl:Announcements>
                <!--总积分排行-->
                <ctrl:Rank  runat="server"></ctrl:Rank>
                <!--小贴士-->
                <ctrl:Tips runat="server"></ctrl:Tips>
               </div>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="hack10px">
        </div>
        <div class="clear">
        </div>
        <div class="line_bot">
        </div>
    </div>
    <ctrl:Footer runat="server"></ctrl:Footer>
    </form>
</body>
</html>
