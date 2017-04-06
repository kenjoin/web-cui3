<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkUserProfile" %>
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
    <div class="tabOn">修改资料</div>
    <div class="tabOff"><A href="framework_userPassword.aspx">更改密码</A></div>
    <div class="clearer"></div>
  </div>
  <DIV class="column">
    <table width="95%" align="center" cellpadding="4" cellspacing="4">
      <tr>
        <td width="30%"><bairong:help HelpText="管理员登录系统使用的用户名" Text="管理员登录名：" runat="server" ></bairong:help></td>
        <td width="70%"><asp:Literal ID="UserName" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="30%"><bairong:help HelpText="显示名" Text="显示名：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="DisplayName" runat="server" Width="155px"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="DisplayName"
						ErrorMessage="显示名为必填项。" ToolTip="显示名为必填项。"  Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td width="30%"><bairong:help HelpText="电子邮件" Text="电子邮件：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="Email" runat="server" Width="155px"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
						ErrorMessage="电子邮件为必填项。" ToolTip="电子邮件为必填项。"  Display="Dynamic"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ControlToValidate="Email" 
						ValidationExpression="(\w[0-9a-zA-Z_-]*@(\w[0-9a-zA-Z-]*\.)+\w{2,})" 
						ErrorMessage="邮件格式不正确。" Display="Dynamic" runat="server"/></td>
      </tr>
      <tr>
        <td width="30%"><bairong:help HelpText="找回密码问题" Text="找回密码问题：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="Question" runat="server" Width="155px"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="Question"
						ErrorMessage="找回密码问题为必填项。" ToolTip="找回密码问题为必填项。"  Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td width="30%"><bairong:help HelpText="找回密码答案" Text="找回密码答案：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="Answer" runat="server" Width="155px"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="Answer"
						ErrorMessage="找回密码答案为必填项。" ToolTip="找回密码答案为必填项。"  Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td colspan="2" height="30" align="center"><asp:Button class="button" OnClick="Submit_Click" runat="server" Text="修 改"  /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
