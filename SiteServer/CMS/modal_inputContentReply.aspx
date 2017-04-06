<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.InputContentReply" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>回复信息</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <asp:Repeater ID="ContentRepeater" runat="server">
      <itemtemplate>
        <tr>
          <td height="25"><strong>
            <asp:Literal id="DataKey" runat="server" />
            ：</strong></td>
          <td align="left" width="90%"><asp:Literal id="DataValue" runat="server" /></td>
        </tr>
      </itemtemplate>
    </asp:Repeater>
    <tr>
      <td height="25" colspan="2"><strong>回复：</strong></td>
    </tr>
    <tr>
      <td colspan="2"><site:TextEditor id="Reply" width="540" height="240" runat="server"></site:TextEditor></td>
    </tr>
  </table>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
