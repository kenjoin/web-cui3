<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.Modal.ForumAdd" Trace="false"%>
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
				<td align="left">
					<nobr><bairong:help HelpText="添加版块的父版块或分区的名称" Text="父版块或分区：" runat="server" ></bairong:help></nobr>
				</td>
				<td align="left">
					<asp:DropDownList ID="ParentForumID" runat="server"></asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="left" class="tips">
					版块或分区之间用换行分割，下级版块在版块前添加“－”字符，索引可以放到括号中，如：
					<strong><br>
					版块一<br>
					－下级版块</strong>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="width:380px;height:230px" TextMode="MultiLine" id="ForumNames" runat="server"/>
					<asp:RequiredFieldValidator id="RequiredFieldValidator"
						ControlToValidate="ForumNames"
						ErrorMessage="*"
						Display="Dynamic"
						runat="server"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />&nbsp;&nbsp;
					<asp:Button class="button" id="Cancel" text="取 消" runat="server" />
				</td>
			</tr>
	  </table>
		</form>
	</body>
</HTML>
