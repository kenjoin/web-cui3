<%@ Page Language="C#" Trace="false" EnableViewState="false" Inherits="SiteServer.CMS.BackgroundPages.BackgroundBasePage" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<style type="text/css">
body { padding:0; margin:0; }
</style>
</head>
<body>
<div class="lefttab2"> <a href="javascript:undefined;" onClick="location.reload();" title="点击刷新栏目树">
  <lan>栏目树</lan>
  </a> </div>
<div class="columncontent">
  <site:NodeTree runat="server"></site:NodeTree>
</div>
</body>
</html>