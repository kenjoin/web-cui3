<%@ Page Language="C#" validateRequest="false" Inherits="UserCenter.BackgroundPages.Modal.SendMail" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>发送邮件</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="24%" align="left"><bairong:help HelpText="收件人邮箱" Text="收件人邮箱：" runat="server" ></bairong:help></td>
      <td width="76%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" Rows="4" TextMode="MultiLine" id="MailUserNames" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="MailUserNames" ErrorMessage="*" Display="Dynamic" runat="server" />
        （多个邮箱以“,”分割） </td>
    </tr>
    <tr>
      <td width="24%" align="left"><bairong:help HelpText="邮件标题" Text="邮件标题：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="55" id="MailTitle" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="MailTitle" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="MailTitle"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="24%" align="left"><bairong:help HelpText="邮件正文" Text="邮件正文：" runat="server" ></bairong:help></td>
      <td align="left"></td>
    </tr>
    <tr align="left">
      <td colspan="3"><bairong:BaiRongEditor id="Body" Type="FCKEditor" width="500" height="250" runat="server"></bairong:BaiRongEditor></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
