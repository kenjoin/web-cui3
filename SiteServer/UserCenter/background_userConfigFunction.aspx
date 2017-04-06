<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserConfigFunction" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">功能模块开启</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="180" align="left"><bairong:help HelpText="设置是否启用网站内容投稿功能" Text="是否启用网站内容投稿功能：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsTouGao" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="180" align="left"><bairong:help HelpText="设置是否启用文档附件管理功能" Text="是否启用文档附件管理功能：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsAttachment" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
      </tr>
      
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
