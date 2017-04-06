<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundConfigurationCreateDetails" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
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
    <div class="columntitle">定制生成配置</div>
    <div class="tips">提示：在此设置各栏目生成页面的规则，同时可以设置当栏目下内容改变后需要的生成栏目</div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名</td>
        <td align="left" style="width:150px;">页面路径</td>
        <td align="left" style="width:150px;">内容变动时需要生成的栏目</td>
        <td align="center" style="width:50px;">&nbsp;</td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <bairong:NoTagText id="ElHtml" runat="server" />
        </itemtemplate>
      </asp:Repeater>
    </table>
  </div>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td align="left"><asp:Button class="button" id="Reset" text="恢复默认设置" onclick="Reset_OnClick" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
