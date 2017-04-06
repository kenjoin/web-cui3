<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.GoodsStorage" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>设置商品库存</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" charset="utf-8" src="../../sitefiles/bairong/scripts/independent/validate.js"></script>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="4" width="100%" align="center">
  <tr><td colspan="2" class="tips">库存设置为-1代表不限制，设置为0代表已售罄，默认库存数与商品库存属性保持一致</td></tr>
    <tr>
      <td align="left" width="80">库存设置：</td>
      <td align="left">
      
      <table cellpadding="4" width="100%" align="center">
    <asp:Repeater ID="rptStorage" runat="server">
    <itemtemplate>
    <tr>
      <td align="left"><asp:Literal ID="ltlColor" runat="server"></asp:Literal></td>
      <td align="left"><asp:Literal ID="ltlSize" runat="server"></asp:Literal></td>
      <td align="left"><asp:Literal ID="ltlStorage" runat="server"></asp:Literal></td>
    </tr>
    </itemtemplate>
    </asp:Repeater>
  </table>
      
      </td>
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
