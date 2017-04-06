<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ContentStarSet" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>内容评分设置</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tips">在此可以设置指定内容的总评分人数以及平均评分值，0代表将取消设置</div>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="140" align="left"><bairong:help HelpText="总评分人数" Text="总评分人数：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="TotalCount" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="TotalCount" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator ControlToValidate="TotalCount" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="总评分人数必须为数字" runat="server"/></td>
    </tr>
    <tr>
      <td width="140" align="left"><bairong:help HelpText="平均评分值" Text="平均评分值：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="PointAverage" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="PointAverage" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator ControlToValidate="PointAverage" ValidationExpression="[\d\.]+" Display="Dynamic" ErrorMessage="平均评分值必须为数字,可以带小数点" runat="server"/></td>
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
