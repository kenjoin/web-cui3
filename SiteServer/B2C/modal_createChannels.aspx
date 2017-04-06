<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.CreateChannels" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>生成栏目页</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="5" cellspacing="3" width="100%" align="center">
    <tr>
      <td width="140" align="left"><bairong:help HelpText="设置是否生成下级栏目" Text="是否生成下级栏目：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsIncludeChildren" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="生成下级栏目" Value="True"></asp:ListItem>
          <asp:ListItem Text="仅生成选中栏目" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否生成内容页" Text="是否生成内容页：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsCreateContents" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="生成内容页" Value="True"></asp:ListItem>
          <asp:ListItem Text="不生成内容页" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="开始生成" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
