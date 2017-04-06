<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentAddAfter" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">后续操作</div>
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="请选择后续操作" Text="请选择后续操作：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="Operation" runat="server" AutoPostBack="true" RepeatDirection="Vertical" OnSelectedIndexChanged="Operation_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <tr id="PublishmentSystemIDRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="选择需要将内容投稿到的站点" Text="选择站点：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="PublishmentSystemIDDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PublishmentSystemID_SelectedIndexChanged"></asp:DropDownList></td>
      </tr>
      <tr id="NodeIDDropDownListRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="选择需要将内容投稿到的栏目" Text="投稿到：" runat="server" ></bairong:help></td>
        <td align="left"><asp:ListBox ID="NodeIDListBox" SelectionMode="Multiple" Height="220" runat="server"></asp:ListBox>
          <asp:RequiredFieldValidator
                                ControlToValidate="NodeIDListBox"
                                ErrorMessage=" *"
                                Display="Dynamic"
                                runat="server"
                                /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="确 定" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
