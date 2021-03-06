﻿<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ContentCrossSiteTrans" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="4" width="95%" align="center">
    <tr>
      <td align="left" width="30%"><bairong:help HelpText="选择需要将内容转发到的站点" Text="选择站点：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="PublishmentSystemIDDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PublishmentSystemID_SelectedIndexChanged"></asp:DropDownList></td>
    </tr>
    <tr>
      <td align="left" width="30%"><bairong:help HelpText="选择需要将内容转发到的栏目" Text="转发到：" runat="server" ></bairong:help></td>
      <td align="left"><asp:ListBox ID="NodeIDListBox" style="height:200px;" SelectionMode="Multiple" runat="server"></asp:ListBox>
        <asp:RequiredFieldValidator
                    ControlToValidate="NodeIDListBox"
                    ErrorMessage=" *"
                    Display="Dynamic"
                    runat="server"
                    /></td>
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
