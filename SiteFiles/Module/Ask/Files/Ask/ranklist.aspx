<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.RankList" %>

<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Announcements" Src="include/announcements.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <ctrl:Theme runat="server"></ctrl:Theme>
<style>
.ph_list_busi .sp1{ width:130px}
.ph_list_busi .sp2{ width:280px}
.ph_list_busi .sp5{ width:260px}
.ph_list_busi .sp6{ width:200px}
</style>
</head>
<body>
    <ctrl:Header runat="server"></ctrl:Header>
    <div class="main">
        <div class="hack10px">
        </div>
        <div class="box950">
            <div class="c72bd">
                <a href="./" target="_self">知道首页</a> > <span class="black">提问题</span></div>
            <div class="hack10px">
            </div>
            <div class="qnbox_l3 f14px">
                <strong class="black">总积分排行</strong>
                <div class="box_con">
                    <dl class="ph_list_busi center">
                        <dt class="black b"><span class="sp sp1">排名</span><span class="sp sp2">用户名称</span><span
                            class="sp sp5">用户组别</span><span class="sp sp6">积分</span></dt>
                        <asp:Repeater ID="rptRankList" runat="server">
                        <ItemTemplate>
                            <asp:Literal ID="ltlItem" runat="server"></asp:Literal></ItemTemplate>
                        </asp:Repeater>                        
                    </dl>
                    <p class="hack12px">
                    </p>
                    <p class="center black">
                    </p>
                    <p class="hack12px">
                    </p>
                </div>
            </div>
            <div class="shadow">
            </div>
        </div>
    </div>
    <ctrl:Footer runat="server"></ctrl:Footer>
</body>
</html>
