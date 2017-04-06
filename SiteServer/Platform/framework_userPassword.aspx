<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkUserPassword" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="MyForm" runat="server">
  <bairong:Message ID="Message" runat="server"></bairong:Message>
  <div class="tab">
    <div class="tabOff"><A href="framework_userTheme.aspx">主题设置</A></div>
    <div class="tabOff"><A href="framework_userLanguage.aspx">语言设置</A></div>
    <div class="tabOff"><A href="framework_userProfile.aspx">修改资料</A></div>
    <div class="tabOn">更改密码</div>
    <div class="clearer"></div>
  </div>
  <DIV class="column">
    <table width="95%" align="center" cellpadding="4" cellspacing="4">
      <tr>
        <td width="30%"><bairong:help HelpText="管理员登录系统使用的用户名" Text="管理员登录名：" runat="server" ></bairong:help></td>
        <td width="70%"><asp:literal ID="UserName" runat="server"></asp:literal></td>
      </tr>
      <tr>
        <td width="30%"><bairong:help HelpText="输入当前帐号密码" Text="当前密码：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="CurrentPassword" runat="server" MaxLength="50" Size="20" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CurrentPassword" ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td width="30%"><bairong:help HelpText="输入新密码" Text="新密码：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="NewPassword" runat="server" MaxLength="50" Size="20" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="NewPassword" ErrorMessage=" *" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
				runat="server"
				ControlToValidate="NewPassword"
				ValidationExpression="[^']+"
				ErrorMessage="不能输入单引号"
				Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="30%"><bairong:help HelpText="重复输入新密码" Text="重复输入新密码：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="ConfirmNewPassword" runat="server" TextMode="Password" MaxLength="50" Size="20"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="ConfirmNewPassword" ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td align="center" colspan="2"><asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
				ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="两次输入的新密码不一致！请再输入一遍您上面填写的新密码。"></asp:CompareValidator></td>
      </tr>
      <tr>
        <td colspan="2" height="30" align="center"><asp:Button class="button" OnClick="Submit_Click" runat="server" Text="修 改"  /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
