<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.Modal.CheckVersion" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>在线更新</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td width="118" height="25"><strong>当前版本：</strong></td>
      <td><asp:Literal id="ltlVersion" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>最新版本：</strong></td>
      <td><asp:Literal id="ltlNewVersion" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>发布日期：</strong></td>
      <td><asp:Literal id="ltlDate" runat="server" /></td>
    </tr>
  </table>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>
