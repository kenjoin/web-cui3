<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.InputAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
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
      <td width="120" align="left"><bairong:help HelpText="提交表单名称" Text="提交表单名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="InputName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="InputName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="InputName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置提交内容是否需要审核" Text="是否需要审核：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsChecked" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="需要审核" Value="False"></asp:ListItem>
          <asp:ListItem Text="不需要审核" Value="True" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置提交内容是否需要回复" Text="是否需要回复：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsReply" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="需要回复" Value="True"></asp:ListItem>
          <asp:ListItem Text="不需要回复" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="提交成功提示信息" Text="提交成功提示信息：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" Rows="3" TextMode="MultiLine" MaxLength="50" id="MessageSuccess" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="提交失败提示信息" Text="提交失败提示信息：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" Rows="3" TextMode="MultiLine" MaxLength="50" id="MessageFailure" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否允许匿名提交" Text="允许匿名提交：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsAnomynous" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="允许" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不允许" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否显示验证码" Text="显示验证码：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsValidateCode" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="显示" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不显示" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置表单提交成功后是否隐藏" Text="表单提交成功后是否隐藏：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsSuccessHide" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="隐藏" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不隐藏" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置表单提交成功后是否刷新页面" Text="表单提交成功后是否刷新页面：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsSuccessReload" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="刷新" Value="True"></asp:ListItem>
          <asp:ListItem Text="不刷新" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置是否启用Ctrl+Enter快速提交" Text="启用Ctrl+Enter快速提交：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:RadioButtonList ID="IsCtrlEnter" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="启用" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不启用" Value="False"></asp:ListItem>
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
