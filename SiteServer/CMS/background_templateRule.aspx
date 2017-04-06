<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundTemplateRule" %>
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
    <div class="columntitle">模版方案管理</div>
    <div class="tips">一套模版方案对应一套模版匹配规则和一套页面命名规则。<br>
      默认情况系统只使用一套模版方案（默认模版方案），如果希望一篇内容能够生成多个页面则可以创建多个模版方案。 </div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="left" style="width:100px;">&nbsp;模版方案名称</td>
        <td align="left">方案设置</td>
        <td align="center" style="width:70px;">&nbsp;</td>
        <td align="center" style="width:70px;">&nbsp;</td>
        <td align="center" style="width:80px;">&nbsp;</td>
        <td align="center" style="width:60px;">&nbsp;</td>
      </tr>
      <asp:Literal ID="ltlTemplateRules" runat="server"></asp:Literal>
    </table>
  </div>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td align="left"><asp:Button ID="AddButton" class="button" text="添加模板方案" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
