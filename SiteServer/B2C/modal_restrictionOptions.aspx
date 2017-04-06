<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.RestrictionOptions" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>访问限制选项</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="98%" align="center">
    <tr>
      <td align="left"><bairong:help HelpText="访问限制选项" Text="栏目页面访问限制选项：" runat="server" ></bairong:help></td>
    </tr>
    <tr>
      <td align="left"><asp:RadioButtonList ID="RestrictionTypeOfChannel" RepeatDirection="Vertical" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="访问限制选项" Text="内容页面访问限制选项：" runat="server" ></bairong:help></td>
    </tr>
    <tr>
      <td align="left"><asp:RadioButtonList ID="RestrictionTypeOfContent" RepeatDirection="Vertical" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="center"><asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
