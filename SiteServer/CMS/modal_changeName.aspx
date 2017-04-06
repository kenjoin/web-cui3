<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ChangeName" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>修改名称</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body onLoad="document.getElementById('<%=FileName.ClientID%>').focus();">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" cellspacing="2" width="100%" align="center">
    <tr>
      <td width="100" align="left"><bairong:help HelpText="文件名" Text="文件名：" runat="server" ></bairong:help></td>
      <td align="left"><asp:Literal ID="ltlFileName" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td width="100" align="left"><bairong:help HelpText="新文件名" Text="新文件名：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="FileName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="FileName" ErrorMessage="文件名称不能为空" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator ID="FileNameValidator" runat="server" ControlToValidate="FileName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><br>
        <asp:Button class="button" id="Ok" text="确 认" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
