<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.RestrictionAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
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
  <table cellpadding="2" width="98%" align="center">
    <tr id="MessageLabelRow" runat="server">
      <td align="center" colspan="2"><asp:Label ID="MessageLabel" Width="100%" runat="server"></asp:Label></td>
    </tr>
    <tr>
      <td colspan="2"><div class="tips">提示：<br>
          xxx.xxx.xxx.xxx = 精确匹配<br>
          xxx.xxx.xxx.xxx-xxx.xxx.xxx.xxx = 范围<br>
          xxx.xxx.xxx.* = 任何匹配</div></td>
    </tr>
    <tr>
      <td width="100" align="left"><bairong:help HelpText="IP访问规则" Text="IP访问规则：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" MaxLength="50" id="Restriction" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="Restriction" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Restriction"
						ValidationExpression="[\d{0,3}\.\*-]+" ErrorMessage="*" Display="Dynamic" /></td>
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
