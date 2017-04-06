<%@ Page Language="C#" Inherits="SiteServer.CCSpark.BackgroundPages.BackgroundConfiguration" %>
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
        <td width="170" align="left"><bairong:help HelpText="是否启用接口" Text="是否启用接口：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="IsAPIEnabled" AutoPostBack="true" OnSelectedIndexChanged="IsAPIEnabled_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="是" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="否" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phAPIEnabled" runat="server">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="用户ID" Text="用户ID：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" MaxLength="200" id="UserID" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="UserID"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="AppKey" Text="AppKey：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" MaxLength="200" id="AppKey" runat="server" />
        	<asp:RegularExpressionValidator runat="server" ControlToValidate="AppKey"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="视频接口地址" Text="视频接口地址：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" MaxLength="200" id="VideoAPI" runat="server" />
        	<asp:RegularExpressionValidator runat="server" ControlToValidate="VideoAPI"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="用户接口地址" Text="用户接口地址：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" MaxLength="200" id="UserAPI" runat="server" />
        	<asp:RegularExpressionValidator runat="server" ControlToValidate="UserAPI"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="回调地址" Text="回调地址：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" MaxLength="200" id="NotifyUrl" runat="server" />
        	<asp:RegularExpressionValidator runat="server" ControlToValidate="NotifyUrl"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="字符集" Text="字符集：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" MaxLength="200" id="Charset" runat="server" />
        	<asp:RegularExpressionValidator runat="server" ControlToValidate="Charset"
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
