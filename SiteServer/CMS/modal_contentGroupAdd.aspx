<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ContentGroupAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr align="left">
      <td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center; color:#FF0000" runat="server" /></td>
    </tr>
    <tr>
      <td width="30%" align="left"><bairong:help HelpText="此内容组的名称" Text="内容组名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="ContentGroupName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="ContentGroupName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="ContentGroupName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="30%" align="left"><bairong:help HelpText="此内容组的简介" Text="内容组简介：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" Rows="4" TextMode="MultiLine" id="Description" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Description"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
