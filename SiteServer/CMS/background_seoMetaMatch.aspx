<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundSeoMetaMatch" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">匹配页面元数据（Meta）&nbsp;<a href="http://help.siteserver.cn/function/159/365.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看搜索引擎优化帮助" align="absmiddle"></a></div>
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td width="300" align="center"><bairong:help HelpText="请选择要匹配的栏目名称（可多选）" Text="栏目列表：" runat="server" ></bairong:help></td>
        <td align="center" valign="middle">&nbsp;</td>
        <td align="center"><bairong:help HelpText="请选择要匹配的栏目页元数据名称" Text="栏目页元数据：" runat="server" ></bairong:help></td>
        <td align="center" valign="middle">&nbsp;</td>
        <td align="center"><bairong:help HelpText="请选择要匹配的栏目页元数据名称" Text="内容页元数据：" runat="server" ></bairong:help></td>
      </tr>
      <tr>
        <td width="300" align="right"><asp:ListBox ID="NodeIDCollectionToMatch" SelectionMode="Multiple" Rows="25" runat="server"></asp:ListBox></td>
        <td align="center" valign="middle"><asp:Button class="button" id="MatchChannelSeoMetaButton" text="<- 匹配" onclick="MatchChannelSeoMetaButton_OnClick" runat="server" />
          <br>
          <br>
          <asp:Button class="button" id="RemoveChannelSeoMetaButton" text="-> 取消" onclick="RemoveChannelSeoMetaButton_OnClick" runat="server" /></td>
        <td align="left"><asp:ListBox ID="ChannelSeoMetaID" SelectionMode="Single" Rows="25" runat="server"></asp:ListBox></td>
        <td align="center" valign="middle"><asp:Button class="button" id="MatchContentSeoMetaButton" text="<- 匹配" onclick="MatchContentSeoMetaButton_OnClick" runat="server" />
          <br>
          <br>
          <asp:Button class="button" id="RemoveContentSeoMetaButton" text="-> 取消" onclick="RemoveContentSeoMetaButton_OnClick" runat="server" /></td>
        <td align="left"><asp:ListBox ID="ContentSeoMetaID" SelectionMode="Single" Rows="25" runat="server"></asp:ListBox></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
