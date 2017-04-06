<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundLeft" Trace="False" enableViewState = "false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<style type="text/css">
body { padding:0; margin:0; }
</style>
</head>
<body>
<div class="lefttab">
  <asp:Literal ID="ltlTitle" runat="server"/>
</div>
<div class="columncontent">
  <form runat="server">
    <site:NodeNaviTree ID="nodeNaviTree" runat="server" />
  </form>
</div>
</body>
</html>
