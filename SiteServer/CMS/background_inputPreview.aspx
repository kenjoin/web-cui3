<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.BackgroundInputPreview" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
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
  <div class="columntitle">预览提交表单</div>
  <table width="100%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td width="155" align="left"> 提交表单名称： </td>
      <td align="left"><asp:Literal ID="ltlInputName" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td width="155" align="left"> 调用标签： </td>
      <td align="left"><asp:Literal ID="ltlInputCode" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td width="155" align="left"> 修改样式： </td>
      <td align="left"><input type=button class="button" onClick="<%=GetEditUrl()%>" value="编 辑" />
        &nbsp;&nbsp;
        <input type=button class="button" onClick="location.href='background_inputTemplate.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&InputID=<%=Request.QueryString["InputID"]%>';" value="修改模板" />
        &nbsp;&nbsp;&nbsp;
        <input type=button class="button" onClick="location.href='background_input.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
    </tr>
    <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
      <td colspan="2" align="left">&nbsp;</td>
    </tr>
    <tr>
      <td align="left"> 预览界面： </td>
      <td align="left"><asp:Literal ID="ltlForm" runat="server"></asp:Literal></td>
    </tr>
  </table>
</div>
</body>
</HTML>