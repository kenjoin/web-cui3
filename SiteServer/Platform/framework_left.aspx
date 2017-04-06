<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkLeft" Trace="False" enableViewState = "false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<style type="text/css">
body { padding:0; margin:0; }
</style>
</head>
<body>
<div class="lefttab">
  <asp:Literal ID="ltlTitle" runat="server"/>
</div>
<asp:Literal ID="ltlScript" runat="server"></asp:Literal>
<div class="columncontent">
  <form runat="server">
    <bairong:NavigationTree ID="navigationTree" runat="server" />
  </form>
</div>
</body>
</html>
