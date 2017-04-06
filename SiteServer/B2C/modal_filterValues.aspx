<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.FilterValues" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>设置筛选值</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="110" align="left"><bairong:help HelpText="筛选属性" Text="筛选属性：" runat="server" ></bairong:help></td>
      <td align="left"><asp:Literal ID="ltlAttributeName" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="默认筛选值" Text="默认筛选值：" runat="server" ></bairong:help></td>
      <td align="left"><asp:Literal ID="ltlValues" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="筛选值类型" Text="筛选值类型：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="rblIsDefaultValues" AutoPostBack="true" OnSelectedIndexChanged="rblIsDefaultValues_OnSelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="采用默认值" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="自定义筛选值" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phValues" runat="server">
    <tr>
      <td align="center" colspan="2" class="tips">在下框中填写自定义筛选值，项与项之间用回车分隔，名称与值之间用“|”分隔(没有“|”代表名称与值相同)。
      </td>
    </tr>
    <tr>
      <td align="center" colspan="2">
          <asp:TextBox ID="tbValues" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server" TextMode="MultiLine" Width="540" Height="230"></asp:TextBox>
      </td>
    </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" text="确 认" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
