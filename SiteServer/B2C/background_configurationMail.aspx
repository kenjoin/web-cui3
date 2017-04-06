<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationMail" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
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
    <div class="columntitle">邮件发送配置</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="200" align="left"><bairong:help HelpText="发送邮件的SMTP服务器" Text="SMTP服务器：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="MailDomain" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MailDomain" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MailDomain"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="发送邮件的SMTP服务器端口" Text="SMTP端口：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="24" id="MailDomainPort" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MailDomainPort" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="MailDomainPort"
            ValidationExpression="\d+"
            Display="Dynamic"
            ErrorMessage="SMTP端口必须为大于零的整数"
            runat="server"/>
          <asp:CompareValidator 
            ControlToValidate="MailDomainPort" 
            Operator="GreaterThan" 
            ValueToCompare="0" 
            Display="Dynamic"
            ErrorMessage="SMTP端口必须为大于零的整数"
            runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="发送邮件中显示的发件人" Text="显示发件人：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="MailFromName" runat="server" /></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="发送邮件的系统邮箱" Text="系统邮箱：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="MailServerUserName" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MailServerUserName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MailServerUserName"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="发送邮件的系统邮箱密码" Text="系统邮箱密码：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" TextMode="Password" id="MailServerPassword" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MailServerPassword" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MailServerPassword"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
  <br>
  <DIV class="column">
    <div class="columntitle">邮件发送测试</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="200" align="left"><bairong:help HelpText="发送测试到此邮箱" Text="邮箱地址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="TestMail" runat="server" />
          （多个邮箱以“;”分割） </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" text="发 送" onclick="Send_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
