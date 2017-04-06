 
<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.Modal.ThreadTopLevel" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<HTML>
	<HEAD>
	<!--#include file="../inc/html_head.inc"-->
    <user:custom type="style" runat="server"></user:custom>
    <title id="MyTitle" runat="server"></title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
	</HEAD>
	<body>
		<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
		  <table cellpadding="2" width="95%" align="center">
			<tr align="left">
				<td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center; color:#FF0000" runat="server" /></td>
			</tr>
			<tr>
				<td align="left" width="100">
					<nobr><bairong:help HelpText="批理置顶" Text="批理置顶：" runat="server" ></bairong:help></nobr>
				</td>
				<td align="left">
					<asp:RadioButtonList ID="rblTopLevel" AutoPostBack="true"  RepeatDirection="Vertical" runat="server" OnSelectedIndexChanged="TopLevel_SelectedIndexChanged">
        	<asp:ListItem Text="解除" Value="0" Selected="true"></asp:ListItem>
            <asp:ListItem Text="置顶I" Value="1"></asp:ListItem>
            <asp:ListItem Text="置顶II" Value="2"></asp:ListItem>
            <asp:ListItem Text="置顶III" Value="3"></asp:ListItem>
        </asp:RadioButtonList>
				</td>
			</tr>  
      <asp:PlaceHolder ID="phCheck" runat="server" Visible="false">
      <tr>
        <td align="left"><bairong:help HelpText="置顶时长" Text="置顶时长：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" MaxLength="50" id="txtTopLevelDate" runat="server" /> 天 
        </td>
      </tr>
      </asp:PlaceHolder> 
			<tr>
				<td colspan="2" align="center" height="80">
					<asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />&nbsp;&nbsp;
					<asp:Button class="button" id="Cancel" text="取 消" runat="server" />
				</td>
			</tr>
	  </table>
		</form>
	</body>
</HTML> 