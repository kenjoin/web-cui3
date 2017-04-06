<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.ConfigurationListValues" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>商品筛选默认价格区间</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="center" colspan="2" class="tips">在下框中填写自定义筛选值，项与项之间用回车分隔，名称与值之间用“|”分隔(没有“|”代表名称与值相同)。
      </td>
    </tr>
    <tr>
      <td align="center" colspan="2">
          <asp:TextBox ID="tbValues" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server" TextMode="MultiLine" Width="540" Height="230"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" text="确 认" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
