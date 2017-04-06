<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.InputContentView" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>查看信息</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" height="20" align="center" cellpadding="3" cellspacing="3">
    <asp:Repeater ID="ContentRepeater" runat="server">
      <itemtemplate>
        <tr>
          <td width="118" height="25"><strong>
            <asp:Literal id="DataKey" runat="server" />
            ：</strong></td>
          <td><asp:Literal id="DataValue" runat="server" /></td>
        </tr>
      </itemtemplate>
    </asp:Repeater>
    <tr>
      <td width="118" height="25"><strong>添加者：</strong></td>
      <td><asp:Literal id="AddUserName" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>添加者IP：</strong></td>
      <td><asp:Literal id="IPAddress" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>添加者位置：</strong></td>
      <td><asp:Literal id="Location" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>添加时间：</strong></td>
      <td><asp:Literal id="AddDate" runat="server" /></td>
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
