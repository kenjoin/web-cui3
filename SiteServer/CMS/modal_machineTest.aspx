<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.MachineTest" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>服务器连接测试</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="95%" align="center">
    <tr>
      <td colspan="2" align="left"> 服务器名称：
        <asp:Literal id="MachineName" runat="server" /></td>
    </tr>
    <tr>
      <td colspan="2" align="left"> 服务器类型：
        <asp:Literal id="ServiceType" runat="server" /></td>
    </tr>
    <tr>
      <td colspan="2" align="left"> 连接方式：
        <asp:Literal id="ConnectionType" runat="server" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
