<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.CheckState" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>查看审核状态</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="4" width="95%" align="center">
    <tr>
      <td align="left" width="30%"><bairong:help HelpText="当前项目的审核状态" Text="审核状态："  runat="server" ></bairong:help></td>
      <td align="left"><asp:Literal ID="State" runat="server"></asp:Literal></td>
    </tr>
    <tr id="RowCheckMessage" runat="server" visible="false">
      <td align="left" width="30%"><bairong:help HelpText="审核不通过的原因" Text="审核不通过原因："  runat="server" ></bairong:help></td>
      <td align="left"><asp:Literal ID="CheckMessage" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:PlaceHolder ID="CheckPlaceHolder" runat="server">
          <asp:Button class="button" id="Check" text="审 核" OnClick="Check_OnClick" runat="server" />
          &nbsp;&nbsp; </asp:PlaceHolder>
        <asp:Button class="button" id="Ok" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
