<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ContentDiggSet" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>内容Digg设置</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tips">在此可以设置指定内容的赞同/不赞同数目</div>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="140" align="left"><bairong:help HelpText="赞同数" Text="赞同数：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="GoodNum" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="GoodNum" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator ControlToValidate="GoodNum" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="赞同数必须为数字" runat="server"/></td>
    </tr>
    <tr>
      <td width="140" align="left"><bairong:help HelpText="不赞同数" Text="不赞同数：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="BadNum" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="BadNum" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator ControlToValidate="BadNum" ValidationExpression="[\d\.]+" Display="Dynamic" ErrorMessage="不赞同数必须为数字,可以带小数点" runat="server"/></td>
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
