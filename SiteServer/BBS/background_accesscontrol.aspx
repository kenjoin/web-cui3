﻿<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundAccessControl" %>
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
  <div class="columntitle">访问控制</div>  <br>  
    <table width="95%" align="center" cellpadding="3" cellspacing="3"> 
    <tr>
        <td width="170" align="left"><bairong:help HelpText="新注册用户在本期限内将无法发帖和短消息，不影响版主和管理员，0 为不限制" Text="新手见习期限：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" id="txtNovitiateByMinute" runat="server" /> 分钟  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtNovitiateByMinute"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr> 
      <tr>
        <td width="170" align="left"><bairong:help HelpText="每天该时间段内用户不能访问站点，请使用 24 小时时段格式，每个时间段一行，如需要也可跨越零点，留空为不限制。例如:
每日晚 11:25 到次日早 5:05 可设置为: 23:25-5:05
每日早 9:00 到当日下午 2:30 可设置为: 9:00-14:30
注意: 格式不正确将可能导致意想不到的问题，用户组中如开启“不受时间段限制”的选项，则该组可不被任何时间段设置约束。" Text="禁止访问时间段：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Columns="40" Rows="6" id="txtForbiddenAccessTime" runat="server" /> 
        </td>
      </tr> 
      <tr>
        <td width="170" align="left"><bairong:help HelpText="每天该时间段内用户不能发帖，格式用法同上" Text="禁止发帖时间段：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Columns="40" Rows="6" id="txtForbiddenPostTime" runat="server" /> 
        </td>
      </tr>   
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
