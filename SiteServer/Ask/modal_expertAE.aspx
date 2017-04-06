<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.Ask.BackgroundPages.Modal.ExpertAE" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<HTML>
	<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
		<title><asp:Literal ID="MyTitle" runat="server"></asp:Literal></title>
		
		
<meta http-equiv="content-type" content="text/html;charset=utf-8">
	</HEAD>
	<body>
		<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
		  <table cellpadding="2" cellspacing="2" width="95%" align="center">
			<tr align="left">
				<td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center; color:#FF0000" runat="server" /></td>
			</tr>
			<tr>
				<td align="left">
					用户名：
				</td>
				<td align="left">
					<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="160" id="txtUserName" runat="server"/>
                    <asp:RequiredFieldValidator
                        ControlToValidate="txtUserName"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
				</td>
			</tr>
			<tr>
				<td align="left">
					分&nbsp;&nbsp;&nbsp;类：
				</td>
				<td align="left">
					<asp:DropDownList ID="ddlCatalog" runat="server">
                        </asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td align="left">
					审&nbsp;&nbsp;&nbsp;核：
				</td>
				<td align="left">
                    <asp:CheckBox ID="chkIsChecked" runat="server" />
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
				
					<asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />&nbsp;&nbsp;
					<asp:Button class="button" id="Cancel" text="取 消" runat="server" />
				</td>
			</tr>
	  </table>
		</form>
	</body>
</HTML>
