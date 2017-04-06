<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ContentTagAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
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
  <div class="tips">
    <asp:Literal ID="ltlTips" runat="server"></asp:Literal>
  </div>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="80" align="left"><bairong:help HelpText="标签" Text="标签：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" Rows="5" MaxLength="100" id="Tags" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="Tags" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <br />
        多个标签请用英文逗号（,）分开 </td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
