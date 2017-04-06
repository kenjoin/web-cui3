<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ConfigurationCreate" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>生成设置</title>
<script language="javascript" src="../Inc/auxiliary.js"></script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="98%" align="center">
    <tr>
      <td width="220" align="left"><bairong:help HelpText="当内容变动时是否生成本栏目" Text="当内容变动时是否生成本栏目：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsCreateChannelIfContentChanged" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr>
      <td width="220" align="left"><bairong:help HelpText="选择当内容变动时需要生成的栏目" Text="当内容变动时需要生成的栏目：" runat="server"></bairong:help></td>
      <td align="left"><asp:ListBox ID="NodeIDCollection" SelectionMode="Multiple" Rows="12" runat="server"></asp:ListBox></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
