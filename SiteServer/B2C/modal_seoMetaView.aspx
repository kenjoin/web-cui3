<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.SeoMetaView" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body style="background-color:#FFFFFF">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr align="center">
      <td>页面元数据名称：
        <bairong:NoTagText id="MetaName" runat="server" /></td>
    </tr>
    <tr>
      <td align="center"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="400" Rows="12" TextMode="MultiLine" id="MetaCode" runat="server" /></td>
    </tr>
    <tr>
      <td align="center"><asp:Button class="button" id="Ok" text="确 定" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
