<%@ Page Language="c#" Inherits="BaiRong.BackgroundPages.FrameworkInitialization" Trace="False"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<title>系统初始化...</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">   
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">   
<META HTTP-EQUIV="Expires" CONTENT="0">
<script language="JavaScript">
if (window.top != self){
	window.top.location = self.location;
}
</script>
</head>
<body>
<br>
<DIV class="column">
<div class="columntitle">系统初始化...</div>
<div class="columncontent" style="text-align:center">
<br>
<asp:Literal ID="ltlContent" runat="server"></asp:Literal>
<br><br>

<DIV class=clearer></DIV>
</div>
</DIV>
</body>
</HTML>