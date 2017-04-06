<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkTop" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<title></title>
<link rel="stylesheet" href="style.css" type="text/css" />
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<user:custom type="style" runat="server"></user:custom>
</head>
<body style="margin-top:0px;">
<table cellSpacing=0 cellPadding=0 width="100%" border=0>
  <tbody>
	<tr>
	  <td rowspan="2" align="center" style="HEIGHT: 57px; width:180px;"><asp:Literal ID="ltlLogo" runat="server"></asp:Literal></td>
	  <td colspan="2" style="PADDING-RIGHT: 10px; MARGIN-TOP: 0px; line-height:28px; height:28px; text-align:right;"><nobr>&nbsp;<asp:Literal ID="ltlWelcome" runat="server"></asp:Literal>&nbsp;&nbsp;<asp:Literal ID="ltlModule" runat="server"></asp:Literal></nobr></td>
	</tr>
	<tr>
	  <td><div id="navigation" class="toptitle"><asp:Literal ID="ltlNavigation" runat="server" /></div></td>
	  <td align="right">
      <div class="toptitle_r">
      <a href="<%=GetUserCenterUrl()%>" target="_blank"><lan>用户中心</lan></a>|<a href="platform/framework_right.aspx?module=<%=Module%>" target="right"><lan>系统面板</lan></a>|<a href="platform/framework_userLanguage.aspx?module=<%=Module%>" target="right"><lan>语言</lan></a>|<a href="platform/framework_userTheme.aspx?module=<%=Module%>" target="right"><lan>选项</lan></a>|<a href="platform/framework_userPassword.aspx" target="right"><lan>修改密码</lan></a>|<A href="logout.aspx" target="_top"><lan>退出</lan></a>
      </div>
      </td>
	</tr>
	<tr>
	  <td colspan="3" class="topline"></td>
	</tr>
  </tbody>
</table>
<asp:PlaceHolder ID="phScript" runat="server">
<script>
	var leftLink = document.getElementById("navigation").getElementsByTagName("a")[0];
	leftLink.style.fontWeight="bold";
	window.top.frames["left"].location.href = leftLink.getAttribute("href");
	
	function clickLink(hyLink){
		var links = document.getElementById("navigation").getElementsByTagName("a");
		for (i = 0; i < links.length; i++){
			links[i].style.fontWeight="normal";
		}
		hyLink.style.fontWeight="bold";
		hyLink.blur();
	}
</script>
</asp:PlaceHolder>
</body>
</html>
