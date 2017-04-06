<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundConfiguration" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
  <div class="columntitle">系统设置</div>
  <div class="tips">如果将过期问题设置为自动关闭，系统将自动关闭指定时间内无人回答的问题，并不在页面中显示</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="问题过期后是否自动关闭" Text="问题过期后是否自动关闭：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="IsCheckExpired" AutoPostBack="true" OnSelectedIndexChanged="IsCheckExpired_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="自动关闭" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不自动关闭" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phCheck" runat="server">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="问题关闭时间" Text="问题关闭时间：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="20" MaxLength="200" id="CheckExpiredQuestionDay" runat="server" /> 天
            <asp:RegularExpressionValidator runat="server" ControlToValidate="CheckExpiredQuestionDay"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="投票关闭时间" Text="投票关闭时间：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="20" MaxLength="200" id="CheckExpiredVoteDay" runat="server" /> 天
            <asp:RegularExpressionValidator runat="server" ControlToValidate="CheckExpiredVoteDay"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
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
