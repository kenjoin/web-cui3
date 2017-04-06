<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundContentDelete" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">删除内容</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr align="left">
        <td colspan="2"><asp:Label width="100%" id="DeleteLabel" Style="text-align:center" runat="server"/></td>
      </tr>
      <tr id="RetainRow" runat="server">
        <td width="30%" align="center"><bairong:help HelpText="选择保留文件删除操作将仅在数据库中删除此内容。" Text="是否保留文件：" runat="server" ></bairong:help></td>
        <td width="76%" align="left"><asp:RadioButtonList ID="RetainFiles" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="保留生成的文件" Value="true"></asp:ListItem>
            <asp:ListItem Text="删除生成的文件" Value="false" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="确 定" OnClick="Submit_OnClick" runat="server"/>
          &nbsp;&nbsp;
          <asp:Button class="button" id="Return" text="返 回" CausesValidation="false" OnClick="Return_OnClick" runat="server"/></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</html>