<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.PublishPages" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>发布页面</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="5" cellspacing="3" width="100%" align="center">
    <tr>
      <td width="140" align="left"><bairong:help HelpText="选择需要发布页面的发布服务器" Text="选择发布服务器：" runat="server" ></bairong:help></td>
      <td align="left"><asp:CheckBoxList ID="MachineNameCheckBoxList" RepeatDirection="Vertical" runat="server"> </asp:CheckBoxList></td>
    </tr>
    <tr>
      <td width="140" align="left"><bairong:help HelpText="选择是否生成页面后发布" Text="生成后发布：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsCreate" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="是" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="否" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="IsChannelPlaceHolder" runat="server">
      <tr>
        <td width="140" align="left"><bairong:help HelpText="设置是否发布下级栏目" Text="是否发布下级栏目：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsIncludeChildren" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="发布下级栏目" Value="True"></asp:ListItem>
            <asp:ListItem Text="仅发布选中栏目" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置是否发布内容页" Text="是否发布内容页：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsIncludeContents" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="发布内容页" Value="True"></asp:ListItem>
            <asp:ListItem Text="不发布内容页" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="开始发布" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
