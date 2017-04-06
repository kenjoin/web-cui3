<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.CreateDirectory" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>创建文件夹</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body onLoad="document.getElementById('<%=DirectoryName.ClientID%>').focus();">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td width="100" align="center"><bairong:help HelpText="文件夹的名称" Text="文件夹名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="18" MaxLength="50" id="DirectoryName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="DirectoryName" ErrorMessage="文件夹名称不能为空" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator ID="DirectoryNameValidator" runat="server" ControlToValidate="DirectoryName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><br>
        <asp:Button class="button" id="Create" text="创 建" onclick="Create_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
