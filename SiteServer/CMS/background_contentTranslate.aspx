<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentTranslate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">内容转移</div>
    <div class="tips">所选内容将转移到指定站点下的栏目中，可以同时选择多个栏目，内容将同时转移到对应栏目下。<br>
      转移有三种方式：<br>
      “复制”将创建内容的副本，并拷贝到指定栏目下，副本和原始内容之间不存在关系；<br>
      “剪切”代表将内容转移到指定栏目下，系统不会创建内容副本；<br>
      “引用”将创建内容的副本，并拷贝到指定栏目下，内容副本仅是原内容的引用，内容副本链接将和原内容链接一致。</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="需要转移的内容" Text="需要转移的内容：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="ltlContents" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="选择需要将内容转移到的站点" Text="转移到站点：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="PublishmentSystemIDDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PublishmentSystemID_OnSelectedIndexChanged"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="选择需要将内容转移到的栏目" Text="转移到栏目：" runat="server" ></bairong:help></td>
        <td align="left"><asp:ListBox ID="NodeIDListBox" Rows="18" SelectionMode="Multiple" runat="server"></asp:ListBox></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置内容的转移方式" Text="转移方式" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="TranslateContentType" runat="server"></asp:RadioButtonList></td>
      </tr>
    </table>
    <asp:Button class="button" id="Submit" text="转 移" onclick="Submit_OnClick" runat="server"/>
    &nbsp;&nbsp;
    <asp:Button class="button" id="Return" text="返 回" CausesValidation="false" OnClick="Return_OnClick" runat="server"/>
  </DIV>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td ></td>
      <td align="center" ></td>
      <td ></td>
    </tr>
  </table>
</form>
</body>
</html>