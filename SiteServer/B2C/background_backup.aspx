<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundBackup" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">数据备份&nbsp;<a href="http://help.siteserver.cn/function/203/765.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看数据备份帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="请选择要备份的数据类型" Text="备份类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="BackupType" runat="server"></asp:DropDownList></td>
      </tr>
      <tr  style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="160" align="left">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="BackupButton" text="开始备份" onclick="BackupButton_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
