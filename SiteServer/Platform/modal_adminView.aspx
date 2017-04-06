<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.Modal.AdminView" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>查看管理员资料</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td width="118" height="25"><strong>登录名：</strong></td>
      <td><asp:Literal id="ltlUserName" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>显示名：</strong></td>
      <td><asp:Literal id="ltlDisplayName" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>添加时间：</strong></td>
      <td><asp:Literal id="ltlCreationDate" runat="server" /></td>
    </tr>
    <tr>
      <td height="25"><strong>最后登录时间：</strong></td>
      <td><asp:Literal ID="ltlLastActivityDate" runat="server" /></td>
    </tr>
    <tr>
      <td height="25"><strong>电子邮箱：</strong></td>
      <td><asp:Literal id="ltlEmail" runat="server" /></td>
    </tr>
    <tr>
      <td height="25"><strong>角色：</strong></td>
      <td><asp:Literal ID="ltlRoles" runat="server" /></td>
    </tr>
  </table>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
