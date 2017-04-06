<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.Express.BackgroundPages.Modal.UserTypeAllowedEdit" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>
<asp:Literal ID="MyTitle" runat="server"></asp:Literal>
</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="100" align="center"><bairong:help HelpText="是否启用" Text="是否启用：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="rblIsAllowed" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" text="保 存" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
