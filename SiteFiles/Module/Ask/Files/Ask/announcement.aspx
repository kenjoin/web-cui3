<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Announcement" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Catalogs" Src="include/catalogs.ascx" %>
<%@ Register  TagPrefix="ctrl" TagName="Announcements" Src="include/announcements.ascx" %>

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
<div class="c72bd"><a href="./">知道首页</a> > <span class="black">系统公告</span></div>
<div class="hack10px"></div>
<div class="left718">
<div class="qnbox_l2 ln22">
<div class="box_con">
<p class="anno_tl c72bd f14px b"><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></p>
<p class="right c8b">日期：<asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></p>
<p class="anno_line"></p>
<p class="hack10px"></p>
<div class="black" style="font-size:14px; line-height:24px;">
<asp:Literal ID="ltlContent" runat="server"></asp:Literal>
</div>
</div>
</div>
<div class="shadow"></div>
</div>
 
<div class="right232">
 
<ctrl:Announcements totalNum="10" runat="server"></ctrl:Announcements>
 
</div>
</div>
</div>

<ctrl:Footer runat="server"></ctrl:Footer>

</body>
</html>