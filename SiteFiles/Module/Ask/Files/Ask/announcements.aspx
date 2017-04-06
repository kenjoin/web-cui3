<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Announcements" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Catalogs" Src="include/catalogs.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Announcements" Src="include/announcements.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Rank" Src="include/rank.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Tips" Src="include/tips.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<ctrl:Theme runat="server"></ctrl:Theme>
</head>
<body>

<ctrl:Header runat="server"></ctrl:Header>

<div class="main">
<div class="hack10px"></div>
<div class="box950">
<div class="c72bd"><a href="./" target="_self">知道首页</a> > <span class="black">公告列表</span></div>
<div class="hack10px"></div>
<div class="left718">
<div class="qnbox_l2 f14px">
<strong class="c61bd">公告列表</strong>
<p class="shadow"></p>
<p class="hack5px"></p>
<div class="list_com">
<dl class="ln29">
<dt class="grey"><span class="sp">公告标题</span><span class="sp4">公告时间</span></dt>

<asp:Repeater ID="rptContents" runat="server">
<itemtemplate>
<dd><span class="sp"><asp:HyperLink ID="hlTitle" runat="server"></asp:HyperLink></span><span class="sp4 f12px grey"><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></span></dd>
</itemtemplate>
</asp:Repeater>
 
</dl>
</div>
<p class="hack8px"></p>
<div class="pconline_page"></div>
<p class="hack8px"></p>
</div>
<div class="shadow"></div>
</div>
 
<div class="right232">
 
 <!--总积分排行-->
 <ctrl:Rank runat="server"></ctrl:Rank>

<!--小贴士-->
<ctrl:Tips runat="server"></ctrl:Tips>
 
<div class="hack5px"></div>
 
</div>
 
</div>
 
</div>

<ctrl:Footer runat="server"></ctrl:Footer>

</body>
</html>