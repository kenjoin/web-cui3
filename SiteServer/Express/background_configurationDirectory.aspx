<%@ Page Language="C#" Inherits="SiteServer.Express.BackgroundPages.BackgroundConfigurationDirectory" %>
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
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
<div class="column">
<div class="columntitle">访问路径设置</div>
<table width="98%" align="center" cellpadding="3" cellspacing="3">
	<tr><td width="170" align="left">
	<bairong:help HelpText="平台网站文件夹" Text="平台网站文件夹：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
      	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="width:250px;" id="DirectoryName" runat="server"/>
        <asp:RequiredFieldValidator id="RequiredFieldValidator"
            ControlToValidate="DirectoryName"
            ErrorMessage="*"
            Display="Dynamic"
            runat="server"/>
      </td>
	  </tr>
	</table>
    <br>
    <table width="95%" align="center" cellspacing="0" cellpadding="0" >
<tr>
<td align="center">
	   <asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server"/>
</td>
</tr>
</table>
</div>
<br />
</form>
</body>
</HTML>
