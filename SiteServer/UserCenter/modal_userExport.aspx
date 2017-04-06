<%@ Page Language="C#" Trace="false" Inherits="UserCenter.BackgroundPages.Modal.UserExport" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<title>导出用户</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<META http-equiv=content-type content=text/html;charset=utf-8>
</head>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <asp:PlaceHolder ID="phExport" runat="server">
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td align="center" class="tips">在此导出用户数据至Excel中。 </td>
      </tr>
      <tr>
        <td align="center" valign="top" ><table align="center" width="95%">
            <tr>
              <td align="left"><bairong:help HelpText="选择导出类型" Text="用户类型：" runat="server" ></bairong:help></td>
              <td align="left"><asp:RadioButtonList ID="CheckedState" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td align="center"><asp:Button class="button" id="Ok" text="导 出" onclick="Ok_OnClick" runat="server"/>
          &nbsp;&nbsp;
          <asp:Button class="button" id="Cancel1" text="取 消" runat="server" /></td>
      </tr>
    </table>
  </asp:PlaceHolder>
  <asp:PlaceHolder ID="phSuccess" runat="server">
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td align="center"><asp:Button class="button" id="Cancel2" text="关 闭" runat="server" /></td>
      </tr>
    </table>
  </asp:PlaceHolder>
</form>
</body>
</html>
