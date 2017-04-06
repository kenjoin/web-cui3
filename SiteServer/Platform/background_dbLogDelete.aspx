<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundDBLogDelete" %>
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
    <div class="columntitle">清空数据库日志</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="30%" align="center"><bairong:help HelpText="上一次清空日志时间。" Text="上一次清空日志时间：" runat="server" ></bairong:help></td>
        <td width="88%" align="left"><%=GetLastExecuteDate()%></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="清空日志" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
