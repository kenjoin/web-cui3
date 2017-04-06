<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserConfigSMS" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
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
    <div class="columntitle">手机短信设置</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="200" align="left"><bairong:help HelpText="短信通用户名" Text="短信通用户名：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="SMSUserName" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="SMSUserName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SMSUserName"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="http://sms.siteserver.cn/register" target="_blank">注册短信通</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="MD5密钥" Text="MD5密钥：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" TextMode="Password" id="SMSMD5String" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="SMSMD5String" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="SMSMD5String"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
