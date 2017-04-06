<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserAdd" %>
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
    <div class="columntitle">添加用户&nbsp;<a href="http://help.siteserver.cn/manage/219/800.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看添加用户帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <asp:PlaceHolder ID="phTypeID" runat="server">
        <tr>
          <td width="160" align="left">用户类型： </td>
          <td><asp:RadioButtonList ID="TypeIDList" RepeatDirection="Horizontal" OnSelectedIndexChanged="TypeIDList_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:RadioButtonList></td>
        </tr>
      </asp:PlaceHolder>
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
        <td width="160" align="left">密 码： </td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="Password" id="Password" MaxLength="50" Size="50" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="Password"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
      </tr>
      <tr>
        <td width="160" align="left">再次输入密码： </td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="Password" id="ConfirmPassword" MaxLength="50" Size="50" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="ConfirmPassword"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
      </tr>
      <tr>
        <td align="center" colspan="2"><asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="Password"
			ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="两次输入的密码不一致！请再输入一遍您上面填写的密码。"></asp:CompareValidator></td>
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
        <td colspan="2" height="30" align="center"><asp:Button class="button" OnClick="Submit_OnClick" Text="添 加" runat="server"/></td>
      </tr>
    </table>
  </div>
  <asp:Literal ID="ltlScripts" runat="server"></asp:Literal>
</form>
</body>
</HTML>
