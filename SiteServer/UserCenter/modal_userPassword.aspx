<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.Modal.UserPassword" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>重设密码</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="4" cellspacing="4">
    <tr>
      <td align="center" colspan="2"><asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="Password"
			ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="两次输入的密码不一致！请再输入一遍您上面填写的密码。"></asp:CompareValidator></td>
    </tr>
    <tr>
      <td width="160" align="left"><bairong:help HelpText="需要重设密码的用户名" Text="用户名：" runat="server" ></bairong:help></td>
      <td><asp:Label id="UserName" runat="server"/></td>
    </tr>
    <tr>
      <td width="160" align="left"><bairong:help HelpText="输入需要设置的新密码" Text="新密码：" runat="server" ></bairong:help></td>
      <td><asp:TextBox TextMode="Password" id="Password" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" MaxLength="50" Size="20" runat="server"/>
        <asp:RequiredFieldValidator
			ControlToValidate="Password"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
    </tr>
    <tr>
      <td width="160" align="left"><bairong:help HelpText="再次输入新密码" Text="再次输入新密码：" runat="server" ></bairong:help></td>
      <td><asp:TextBox TextMode="Password" id="ConfirmPassword" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" MaxLength="50" Size="20" runat="server"/>
        <asp:RequiredFieldValidator
			ControlToValidate="ConfirmPassword"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
    </tr>
    <tr>
      <td colspan="2" height="30" align="center"><asp:Button id="Submit" class="button" Text="修 改" Onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>
