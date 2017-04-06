<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerConfigurationDisableApplications" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">禁用系统</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="220" align="left"><bairong:help HelpText="选择是否禁用博客系统" Text="是否禁用博客系统：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsDisableBlog" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="220" align="left"><bairong:help HelpText="选择是否禁用相册系统" Text="是否禁用相册系统：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsDisablePhoto" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="220" align="left"><bairong:help HelpText="选择是否禁用收藏系统" Text="是否禁用收藏系统：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsDisableFavorite" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="220" align="left"><bairong:help HelpText="选择是否禁用好友系统" Text="是否禁用好友系统：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsDisableFriends" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
