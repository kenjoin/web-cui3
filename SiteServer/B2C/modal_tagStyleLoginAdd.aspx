<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.TagStyleLoginAdd" Trace="false"%>
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
    <tr>
      <td align="left"><bairong:help HelpText="设置表单显示方式" Text="表单显示方式：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsHorizontal" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="竖向显示" Value="False"></asp:ListItem>
          <asp:ListItem Text="横向显示" Value="True" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示记录状态复选框" Text="显示记录状态复选框：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsRemember" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示忘记密码链接" Text="显示忘记密码链接：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsForget" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示新用户注册链接：" Text="显示新用户注册链接：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsRegister" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
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
