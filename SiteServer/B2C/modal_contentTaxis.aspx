<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ContentTaxis" Trace="false"%>
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
  <table cellpadding="4" width="95%" align="center">
    <tr>
      <td align="left" width="120"><bairong:help HelpText="对所选内容排序的方向" Text="排序方向："  runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="TaxisType" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="对所选内容移动的数目" Text="移动数目：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="20" Text="1" MaxLength="50" id="TaxisNum" runat="server"/>
        <asp:RequiredFieldValidator
					ControlToValidate="TaxisNum"
					ErrorMessage="*"
					Display="Dynamic"
					runat="server"/>
        <asp:RegularExpressionValidator
					runat="server"
					ControlToValidate="TaxisNum"
					ValidationExpression="^([1-9]|[1-9][0-9]{1,})$"
					ErrorMessage="*"
					Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
