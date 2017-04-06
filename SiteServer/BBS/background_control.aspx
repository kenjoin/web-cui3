<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundControl" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">防灌水设置</div>
    <br>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="两次发表时间间隔(秒)" Text="两次发表时间间隔(秒):" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" id="tbPostInterval" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="tbPostInterval"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          (两次发帖间隔小于此时间，0 为不限制) </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="设置是否发表主题启用验证码" Text="发表主题启用验证码：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="rblIsVerifyCodeThread" AutoPostBack="true" OnSelectedIndexChanged="rblIsVerifyCode_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="启用" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不启用" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="设置是否回复主题启用验证码" Text="回复主题启用验证码：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="rblIsVerifyCodePost" AutoPostBack="true" OnSelectedIndexChanged="rblIsVerifyCode_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="启用" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不启用" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phPostVerifyCode" runat="server">
        <tr>
          <td width="170" align="left"><bairong:help HelpText="验证码发帖限制" Text="验证码发帖限制：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" id="tbPostVerifyCodeCount" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="tbPostVerifyCodeCount"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
            (发帖数超过此设置的会员将不受验证码功能限制，0 表示所有会员均受限制) </td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
