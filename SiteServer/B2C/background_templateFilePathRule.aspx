<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTemplateFilePathRule" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" src="../Inc/auxiliary.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  
  <DIV class="column">
  <div class="columntitle">页面命名规则</div>
    <div class="tips">在此可设置各栏目的生成页面命名规则，或者指定对应栏目的生成页面地址</div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名</td>
        <td align="left">页面路径</td>
        <td align="center" style="width:50px;">&nbsp;</td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <bairong:NoTagText id="ElHtml" runat="server" />
        </itemtemplate>
      </asp:Repeater>
    </table>
  </div>
</form>
</body>
</HTML>
