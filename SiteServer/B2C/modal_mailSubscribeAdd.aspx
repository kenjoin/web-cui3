<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.MailSubscribeAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>添加邮件订阅</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body onLoad="document.getElementById('<%=Receiver.ClientID%>').focus();">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="100%" align="center" cellpadding="2" cellspacing="2">
    <tr>
      <td width="100" align="left"><bairong:help HelpText="订阅人的姓名" Text="订阅人：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="Receiver" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="Receiver" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Receiver"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="100" align="left"><bairong:help HelpText="订阅邮箱" Text="订阅邮箱：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="Mail" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="Mail" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Mail"
						ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><br>
        <asp:Button class="button" id="Submit" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
