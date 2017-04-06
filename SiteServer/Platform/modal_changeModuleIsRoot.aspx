<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.Modal.ChangeModuleIsRoot" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tips">
    <asp:Literal ID="ltlMessage" runat="server"></asp:Literal>
  </div>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Change" text="确 定" OnClick="Change_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
