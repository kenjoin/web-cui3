<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ChangePublishmentSystemUrl" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>修改访问地址</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body id="MyBody" runat="server">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tips"> 此操作将修改站点“<%=GetSiteName()%>”的访问地址，修改前请先确认此地址能够被访问。</div>
  <table cellpadding="2" width="100%" align="center">
    <tr>
      <td align="left" width="120"><bairong:help HelpText="生成页面的路径类型" Text="页面路径类型：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsRelatedUrl" AutoPostBack="true" OnSelectedIndexChanged="IsRelatedUrl_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr id="RowPublishmentSystemUrl" runat="server">
      <td align="left"><bairong:help HelpText="访问此网站所使用的域名" Text="域名地址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="PublishmentSystemUrl" style="ime-mode:disabled;" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="PublishmentSystemUrl"
                        ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        <a href="javascript:undefined;" onClick="javascript:if (document.getElementById('PublishmentSystemUrl').value != '') window.open(document.getElementById('PublishmentSystemUrl').value);" style="text-decoration:underline">预览</a></td>
    </tr>
    <tr id="RowSubDomainCollection" runat="server">
      <td align="left"><bairong:help HelpText="配置系统的二级域名文件夹名称" Text="二级域名文件夹名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Columns="30" Height="100" id="SubDomainCollection" style="ime-mode:disabled;" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="SubDomainCollection"
                        ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        （文件夹名称之间用换行符分割） </td>
    </tr>
  </table>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Change" text="确 定" OnClick="Change_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
