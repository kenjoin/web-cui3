<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="Calendar" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">修改用户</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left">登录名： </td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="UserName" MaxLength="50" Size="50" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="UserName"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
      </tr>
      <tr>
        <td width="160" align="left">显示名： </td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="DisplayName" MaxLength="50" Size="50" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="DisplayName"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
      </tr>
      <tr>
        <td width="160" align="left">电子邮箱： </td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="Email" runat="server" Size="50"></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
			ErrorMessage=" *" Display="Dynamic"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ControlToValidate="Email" 
			ValidationExpression="(\w[0-9a-zA-Z_-]*@(\w[0-9a-zA-Z-]*\.)+\w{2,})" 
			ErrorMessage=" *" Display="Dynamic" runat="server"/></td>
      </tr>
      <tr>
        <td width="160" align="left">手机号码： </td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="Mobile" runat="server" Size="50"></asp:TextBox>
          <asp:RegularExpressionValidator ControlToValidate="Mobile" 
			ValidationExpression="^(13|15|18)\d{9}$" 
			ErrorMessage=" *" Display="Dynamic" runat="server"/></td>
      </tr>
      <user:UserAuxiliaryControl ID="UserControl" runat="server"/>
      <tr>
        <td colspan="2" height="30" align="center"><asp:Button class="button" OnClick="Submit_OnClick" Text="修 改" runat="server"/>
          &nbsp;&nbsp;
          <asp:Button class="button" id="Return" CausesValidation="false" text="返 回" onclick="Return_OnClick" runat="server"/></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
