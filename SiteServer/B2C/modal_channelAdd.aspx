<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.ChannelAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
	<body>
		<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
		  <table cellpadding="2" width="100%" align="center">
			<tr align="left">
				<td colspan="4"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center; color:#FF0000" runat="server" /></td>
			</tr>
			<tr>
				<td align="left">
					<bairong:help HelpText="添加栏目的父栏目的名称" Text="父栏目：" runat="server" ></bairong:help>
				</td>
				<td align="left">
					<asp:DropDownList ID="ParentNodeID" AutoPostBack="true" OnSelectedIndexChanged="ParentNodeID_SelectedIndexChanged" runat="server"></asp:DropDownList>
				</td>
                <td align="left">
					<bairong:help HelpText="新增栏目的内容模型" Text="内容模型：" runat="server" ></bairong:help>
				</td>
				<td align="left">
					<asp:DropDownList ID="ContentModelID" runat="server"></asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="left">
					<div class="tips">栏目之间用换行分割，下级栏目在栏目前添加“－”字符，索引可以放到括号中，如：
					<strong><br>栏目一(栏目索引)<br>
					－下级栏目(下级索引)<br>
					－－下下级栏目</strong></div>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="width:430px;height:240px" TextMode="MultiLine" id="NodeNames" runat="server"/>
					<asp:RequiredFieldValidator id="RequiredFieldValidator"
						ControlToValidate="NodeNames"
						ErrorMessage="*"
						Display="Dynamic"
						runat="server"/>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />&nbsp;&nbsp;
					<asp:Button class="button" id="Cancel" text="取 消" runat="server" />
				</td>
			</tr>
	  </table>
		</form>
	</body>
</HTML>
