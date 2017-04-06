<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.Ask.BackgroundPages.Modal.LinksAE" %>
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
					链接名称：
				</td>
				<td align="left">
					<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="280" id="txtLinkName" runat="server"/>
                    <asp:RequiredFieldValidator
                        ControlToValidate="txtLinkName"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
				</td>
			</tr>
			<tr>
				<td align="left">
					链接地址：
				</td>
				<td align="left">
					<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="280" id="txtLinkAddress" runat="server"/>
                    <asp:RequiredFieldValidator
                        ControlToValidate="txtLinkAddress"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
				</td>
			</tr>
			<tr>
			<td></td>
				<td>
					<asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />&nbsp;&nbsp;
					<asp:Button class="button" id="Cancel" text="取 消" runat="server" />
				</td>
			</tr>
	  </table>
		</form>
	</body>
</HTML>
