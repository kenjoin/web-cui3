<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.TagStyleRegisterAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="2" cellspacing="2">
    <tr>
      <td width="120" align="left"><bairong:help HelpText="样式名称" Text="样式名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="StyleName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="StyleName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="StyleName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示验证码" Text="显示验证码：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsValidateCode" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phTypeID" runat="server">
      <tr>
        <td width="120" align="left"><bairong:help HelpText="注册用户的用户类型" Text="用户类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="TypeID" runat="server"></asp:DropDownList></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="注册用户的默认用户组" Text="默认用户组：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="GroupID" runat="server"></asp:DropDownList></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="注册用户的默认用户积分" Text="默认用户积分：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Credits" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="Credits" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator
					runat="server"
					ControlToValidate="Credits"
					ValidationExpression="^([0-9]|[1-9][0-9]{1,})$"
					ErrorMessage="*"
					Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="取消注册时的返回地址" Text="返回地址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" id="ReturnUrl" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="ReturnUrl" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="ReturnUrl"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
