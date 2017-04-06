<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundAdministratorAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:Custom Type="style" runat="server"/>
<bairong:Code Type="Calendar" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"> </bairong:Message>
  <div class="column">
    <div class="columntitle"> 添加管理员&nbsp;<a href="http://help.siteserver.cn/manage/218/797.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看添加管理员帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:Help HelpText="输入管理员登录系统使用的用户名" Text="管理员登录名：" runat="server"> </bairong:Help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        ID="UserName" MaxLength="50" Size="50" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="UserName" ErrorMessage=" *" Display="Dynamic"
                        runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserName"
                        ValidationExpression="[^']+" ErrorMessage="不能用单引号" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="UserName"
                        ValidationExpression="[^<]+" ErrorMessage="不能用<注册" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:Help HelpText="输入管理员登录系统后的显示名称" Text="管理员显示名：" runat="server"> </bairong:Help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        ID="DisplayName" MaxLength="50" Size="50" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="DisplayName" ErrorMessage=" *" Display="Dynamic"
                        runat="server" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:Help HelpText="输入管理员密码" Text="管理员密码：" runat="server"> </bairong:Help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        TextMode="Password" ID="Password" MaxLength="50" Size="50" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="Password" ErrorMessage=" *" Display="Dynamic"
                        runat="server" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:Help HelpText="再次输入管理员密码" Text="再次输入密码：" runat="server"> </bairong:Help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        TextMode="Password" ID="ConfirmPassword" MaxLength="50" Size="50" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" ErrorMessage=" *"
                        Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td align="center" colspan="2"><asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="Password"
                        ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="两次输入的密码不一致！请再输入一遍您上面填写的密码。"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:Help HelpText="输入管理员的邮件地址" Text="电子邮箱：" runat="server"> </bairong:Help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        ID="Email" runat="server" Size="50"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage=" *"
                        Display="Dynamic"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ControlToValidate="Email" ValidationExpression="(\w[0-9a-zA-Z_-]*@(\w[0-9a-zA-Z-]*\.)+\w{2,})"
                        ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
      <tr>
        <td width="160" align="left"><bairong:Help HelpText="密码忘记时用于找回密码" Text="找回密码问题：" runat="server"> </bairong:Help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                            ID="PasswordQuestion" MaxLength="100" Size="50" runat="server" />
          <asp:RequiredFieldValidator runat="server" ControlToValidate="PasswordQuestion" ErrorMessage=" *"
                            Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:Help HelpText="密码忘记时用于找回密码" Text="找回密码答案：" runat="server"> </bairong:Help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                            ID="PasswordAnswer" MaxLength="100" Size="50" runat="server" />
          <asp:RequiredFieldValidator runat="server" ControlToValidate="PasswordAnswer" ErrorMessage=" *"
                            Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td colspan="2" height="30" align="center"><asp:Button class="button" OnClick="Submit_OnClick" Text="添 加" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
