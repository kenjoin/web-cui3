<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.FilterAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>添加筛选属性</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="120" align="left"><bairong:help HelpText="选择筛选属性" Text="筛选属性：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="ddlAttributeName" runat="server"></asp:DropDownList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="自定义显示名称" Text="自定义显示名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox ID="tbDisplayName" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="180" runat="server"></asp:TextBox></td>
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
