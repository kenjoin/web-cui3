<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.Modal.UserTypeAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<title>
<asp:Literal ID="MyTitle" runat="server"></asp:Literal>
</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<user:custom type="style" runat="server"></user:custom>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" height="20" align="center" cellpadding="4" cellspacing="4">
    <tr>
      <td width="180" align="left"><bairong:help HelpText="用户类型名称" Text="用户类型名称：" runat="server" ></bairong:help></td>
      <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="TypeName" MaxLength="50" Size="30" runat="server"/>
        <asp:RequiredFieldValidator
			ControlToValidate="TypeName"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
    </tr>
    <%--    <tr><td width="180" align="left">
	<bairong:help HelpText="此类型的默认用户组" Text="默认用户组：" runat="server" ></bairong:help>
	</td>
	<td>
		<asp:DropDownList ID="GroupID" runat="server"></asp:DropDownList>
	</td></tr>--%>
    <tr>
      <td colspan="2" height="30" align="center"><asp:Button id="Submit" class="button" OnClick="Submit_OnClick" Text="添 加" runat="server"/>
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
