<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTemplateReference" enableviewstate="false"%>
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
    <div class="columntitle">STL语言参考</div>
    <table cellpadding="3" width="100%" align="center">
      <tr>
        <td align="center"><table width="95%" align="center" cellspacing="0" cellpadding="3" >
            <tr>
              <td height="12" align="left"><strong>STL语言 </strong>为SiteServer模板语言(SiteServer Template Language)的缩写，是一种和 <strong>HTML语言 </strong>类似的服务器端语言。</td>
            </tr>
            <tr>
              <td height="12" align="right"><a href="http://www.siteserver.cn/download" target="_blank"><img src="../../sitefiles/bairong/icons/download.gif" border="0">下载SiteServer模板制作器</a></td>
            </tr>
          </table>
          <div class="columnsubtitle">STL 元素</div>
          <table cellspacing="2" cellpadding="2" Align="center" border="0" style="width:100%;">
            <tr class="summary-title" align="Center" style="height:25px;">
              <td width="0">元素</td>
              <td width="0">含义</td>
              <td width="0">属性</td>
            </tr>
            <asp:Literal ID="ltlTemplateElements" runat="server"></asp:Literal>
          </table>
          <br>
          <div class="columnsubtitle">STL 功能元素</div>
          <table cellspacing="2" cellpadding="2" Align="center" border="0" style="width:100%;">
            <tr class="summary-title" align="Center" style="height:25px;">
              <td width="0">元素</td>
              <td width="0">含义</td>
              <td width="0">属性</td>
            </tr>
            <asp:Literal ID="ltlTemplateDynamics" runat="server"></asp:Literal>
          </table>
          <br />
          <div class="columnsubtitle">STL 实体</div>
          <table cellspacing="2" cellpadding="2" Align="center" border="0" style="width:100%;">
            <tr class="summary-title" align="Center" style="height:25px;">
              <td width="0">实体</td>
              <td width="0">含义</td>
              <td width="0">属性</td>
            </tr>
            <asp:Literal ID="ltlTemplateEntities" runat="server"></asp:Literal>
          </table></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
