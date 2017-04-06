<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundAttachmentType" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
<bairong:Message runat="server"></bairong:Message>
<DIV class="column">
<div class="tips">在此限定指定类型附件的最大尺寸，设置为0可禁止用户上传此类型附件。</div>
<div class="columntitle">附件类型大小限制</div>

		<ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="ID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
		<HeaderStyle HorizontalAlign="center" Height="25" />
		<ItemStyle Height="25"/>

		<Columns>
            <asp:TemplateColumn HeaderText="附件后缀">
				<ItemTemplate>
					&nbsp;<asp:Literal ID="ltlFileExtName" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="left" />
			</asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="附件最大大小">
				<ItemTemplate>
					&nbsp;<asp:Literal ID="ltlMaxSize" runat="server"></asp:Literal> K
				</ItemTemplate>
				<ItemStyle HorizontalAlign="left" />
			</asp:TemplateColumn>
            <asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="50" HorizontalAlign="center" />
			</asp:TemplateColumn>
			<asp:TemplateColumn>
				<ItemTemplate>
					<a href="background_attachmentType.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID")%>&Delete=True" onClick="javascript:return confirm('此操作将删除此限制，确认吗？');">删除</a>
				</ItemTemplate>
				<ItemStyle Width="50" HorizontalAlign="center" />
			</asp:TemplateColumn>
		</Columns>
	</ASP:DataGrid>

	
</DIV>

<table width="95%" align="center">
	<tr>
		<td align="right">
			<table cellpadding="0" cellspacing="0" width="100%">
				<tr><td>
					<asp:Button class="button" id="AddButton" Text="添加限制" runat="server" />
				</td></tr>
			</table>
		</td>
	</tr>
</table>

</form>

</body>
</html>