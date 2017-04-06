<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.StlTagAdd" Trace="false"%>
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
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="140" align="center"><bairong:help HelpText="自定义模板标签名" Text="自定义模板标签名：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" id="TagName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="TagName" ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
    </tr>
    <tr>
      <td width="140" align="center"><bairong:help HelpText="自定义模板标签说明" Text="自定义模板标签说明：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="Description" runat="server" /></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:TextBox ID="Content" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server" TextMode="MultiLine" Width="540" Height="300"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="Content" ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
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
