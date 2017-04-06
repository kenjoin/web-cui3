<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.Modal.UserView" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>查看会员资料</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td width="118" height="25"><strong>登录名：</strong></td>
      <td><asp:Literal id="ltlUserName" runat="server" /></td>
      <td><strong>显示名：</strong></td>
      <td width="118"><asp:Literal id="ltlDisplayName" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>注册时间：</strong></td>
      <td><asp:Literal id="ltlCreationDate" runat="server" /></td>
      <td><strong>最后活动时间：</strong></td>
      <td><asp:Literal ID="ltlLastActivityDate" runat="server" /></td>
    </tr>
    <tr>
      <td width="118" height="25"><strong>电子邮箱：</strong></td>
      <td><asp:Literal id="ltlEmail" runat="server" /></td>
      <td><strong>手机号码：</strong></td>
      <td><asp:Literal ID="ltlMobile" runat="server" /></td>
    </tr>
  </table>
  <asp:DataList ID="MyDataList" RepeatColumns="2" Width="95%" CellPadding="3" CellSpacing="3" HorizontalAlign="Center" runat="server">
    <itemtemplate>
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td width="118" height="25"><strong>
            <asp:Literal id="ltlDataKey" runat="server" />
            ：</strong></td>
          <td><asp:Literal id="ltlDataValue" runat="server" /></td>
        </tr>
      </table>
    </itemtemplate>
  </asp:DataList>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
