<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.UserContributeEdit" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>会员投稿设置</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="98%" align="center">
    <tr>
      <td width="150" align="left"><bairong:help HelpText="设置是否允许会员投稿" Text="是否允许会员投稿：" runat="server"></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsUserContribute" AutoPostBack="true" OnSelectedIndexChanged="IsUserContribute_OnSelectedIndexChanged" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phContribute" Visible="false" runat="server">
      <tr>
        <td width="150" align="left"><bairong:help HelpText="指定投稿栏目" Text="指定投稿栏目：" runat="server"></bairong:help></td>
        <td align="left"><asp:DropDownList ID="IsUserContributeAllNode" AutoPostBack="true" OnSelectedIndexChanged="IsUserContributeAllNode_OnSelectedIndexChanged" runat="server"> </asp:DropDownList></td>
      </tr>
      <asp:PlaceHolder ID="phUserContributeNodeIDs" Visible="false" runat="server">
        <tr>
          <td width="150" align="left"><bairong:help HelpText="选择可投稿的栏目" Text="选择可投稿的栏目：" runat="server"></bairong:help></td>
          <td align="left"><asp:ListBox ID="UserContributeNodeIDs" SelectionMode="Multiple" Rows="12" runat="server"></asp:ListBox></td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td width="150" align="left"><bairong:help HelpText="设置投稿是否需要审核" Text="投稿是否需要审核：" runat="server"></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsUserContributeChecked" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="150" align="left"><bairong:help HelpText="设置是否默认投稿站点" Text="是否默认投稿站点：" runat="server"></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsUserContributeDefault" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
