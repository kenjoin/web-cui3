<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkRight" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html><head>
<script src="../Inc/siteservercore.js"></script>
<script src="../../sitefiles/bairong/Scripts/global.v1.3.5.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="Prototype" runat="server" />
<bairong:Code type="Scriptaculous" runat="server" />
<style type="text/css">
td,input,button,select,body {font-family:"lucida Grande",Verdana;font-size:12px;}
.welcomeinfo {font:bold 16px "lucida Grande",Verdana;height:39px;margin:0 0 0 118px;}
.t_left1 {margin-left:17px;}
.nowrap {white-space:nowrap; text-decoration:none}
.f_size,.f_sizetd {font-size:12px;}
.normal {font-weight:normal}
img {border:none}
a {text-decoration:none;cursor:pointer;}
.level {margin-bottom:6px;margin-left:1px;font:normal 12px "lucida Grande",Verdana;clear:both;}
.level_no {margin-top:8px;margin-bottom:17px;}
.leftpanel {margin:0 0 14px 0;padding:0;list-style:none;}
.left {float:left}
.right {float:right}

.todaybody {overflow:auto;overflow-x:hidden}
ul.tipbook {border-top:1px solid #d8dee5;margin:0 13px;padding:18px 0 0 2px;list-style:none;}
ul.tipbook li {height:28px;}
.tipstitle_title {font:normal 14px Verdana;margin-bottom:5px;padding-left:13px;padding-top:8px;}
.ico_input {border:none;padding:0;margin:0;width:16px;height:16px;}
.ico_helpmin {background:url(../pic/icon/help.gif) no-repeat;margin:0 6px 1px 0}
.ico_bbsmin {background:url(../pic/icon/bbs.gif) no-repeat;margin:0 6px 1px 0}

</style>
<link href="../../SiteFiles/bairong/Scripts/windows_js/themes/default.css" rel="stylesheet" type="text/css"/>	
<link href="../../SiteFiles/bairong/Scripts/windows_js/themes/alphacube.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="../../SiteFiles/bairong/Scripts/windows_js/javascripts/effects.js"> </script>
<script type="text/javascript" src="../../SiteFiles/bairong/Scripts/windows_js/javascripts/window.js"> </script>
<script type="text/javascript" src="../../SiteFiles/bairong/Scripts/windows_js/javascripts/window_effects.js"> </script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form runat="server">
<ul class="leftpanel" style="margin-bottom:0;border:none;">
  <li style="padding-right:200px;height:auto" id="TodayWelcome" class="welcomeinfo t_left1">
		<div class="oneheight"></div>
		<div class="level level_no" style="<%=GetProductStyle()%>; line-height:26px;"><lan>欢迎使用 <asp:Literal ID="ltlProductName" runat="server"></asp:Literal>。</lan><br /><a href="http://help.siteserver.cn" target="_blank" class="nowrap"><input type="button" class="ico_helpmin ico_input" style="margin:0 3px 0 0;" /><lan>系统帮助</lan></a>&nbsp;<a href="http://bbs.siteserver.cn" target="_blank" class="nowrap"><input type="button" class="ico_bbsmin ico_input" style="margin:0 3px 0 0;" /><lan>支持论坛</lan></a>
	</div>
	</li>
</ul>

<div style="width:100%; margin:5px;" id="TodayPartNotice" class="bd column">
	<div class="tipstitle_title bd settingtable bold columntitle" style="border-width:0 0 1px 0;padding-top:4px;*padding-top:4px;height:20px;*height:25px"><span class="nounderline cur_default"><lan>系统信息</lan>&nbsp;</span></div>
<div id="contentBulletin_">
		<div style="height:75px;margin:11px 16px 0 10px;">
						<div>
				<div style="margin:2px 14px 0 3px;" class="left"></a>
				</div>
				<div class="left b_size" style="margin:14px 0 0 0">
					<div class="addrtitle f_size"><asp:Literal ID="ltlVersionInfo" runat="server" />
				  <div style="margin-top:4px"> <lan>最近升级时间</lan>:<asp:Literal ID="ltlUpdateDate" runat="server"></asp:Literal></div></div>
				</div>
			</div>
					</div>

		<ul class="tipbook addrtitle b_size" style="padding-bottom:10px;<%=GetProductStyle()%>">
			<li>
            <asp:Button ID="btnCheckVersion" class="button" style="padding:3px; padding-bottom:0px" text="{lan:检测官方最新版本}" runat="server"></asp:Button>
              &nbsp;
            <input type="button" class="button" style="padding:3px; padding-bottom:0px" onClick="javascript:window.open('http://help.siteserver.cn');" value="{lan:访问官方帮助中心}" />
              &nbsp;
            <input type="button" class="button" style="padding:3px; padding-bottom:0px" onClick="javascript:window.open('http://bbs.siteserver.cn');" value="{lan:有问题？提交到论坛！}" />
  </li></ul>
	</div>
</div>

</div>
<div class="clr" style="height:23px;margin:15px 0 0 10px" >
  <div class="left" style="margin:2px 0 0 0"><asp:Literal ID="ltlLastLoginDate" runat="server"></asp:Literal></div>

</div>

<div id="tips" style="display:none">
<table width="100%" border="0" cellspacing="3" cellpadding="3">
  <tr>
    <td style="line-height:22px;" id="tipsTd"></td>
  </tr>
</table>
</div>
<asp:Literal ID="ltlTips" runat="server"></asp:Literal>
</form>
</body>
</html>
