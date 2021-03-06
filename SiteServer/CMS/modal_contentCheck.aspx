﻿<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ContentCheck" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="4" width="95%" align="center">
    <tr>
      <td align="left" width="30%"><bairong:help HelpText="设置所选内容的状态" Text="设置内容状态："  runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="CheckType" AutoPostBack="true" OnSelectedIndexChanged="CheckType_SelectedIndexChanged" runat="server"></asp:RadioButtonList></td>
    </tr>
    <tr align="left" id="RowMessage" runat="server" visible="false">
      <td align="left"><bairong:help HelpText="备注" Text="备注(非必填项)："  runat="server" ></bairong:help></td>
      <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="Message"
                    TextMode="MultiLine"
                    Columns="40"
                    Rows="3"
                    runat="server" /></td>
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
