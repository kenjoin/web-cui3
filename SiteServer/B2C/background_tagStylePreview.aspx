<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTagStylePreview" %>
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
<user:custom type="showpopwin" runat="server" />
<bairong:Message runat="server"></bairong:Message>
<DIV class="column">
  <div class="columntitle">预览模板标签样式</div>
  <table width="100%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td width="155" align="left"> 样式名称： </td>
      <td align="left"><asp:Literal ID="ltlStyleName" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td width="155" align="left"> 调用标签： </td>
      <td align="left"><asp:Literal ID="ltlElement" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td width="155" align="left"> 修改样式： </td>
      <td align="left">
      	<input type=button class="button" onClick="<%=GetEditUrl()%>" value="编 辑" />
      	&nbsp;&nbsp;
        <input type=button class="button" onClick="<%=GetTemplateUrl()%>" value="修改模板" />
        &nbsp;&nbsp;&nbsp;<input type=button class="button" onClick="location.href='<%=Request.QueryString["ReturnUrl"]%>';" value="返 回" /></td>
    </tr>
    <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
      <td colspan="2" align="left">&nbsp;</td>
    </tr>
    <tr>
      <td align="left"> 预览界面： </td>
      <td align="left"><asp:Literal ID="ltlForm" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td colspan="2" align="left">&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</HTML>