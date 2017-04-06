<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundRelatedFieldItem" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
<bairong:Message runat="server"></bairong:Message>
<DIV class="column">
<div class="columntitle"><asp:Literal ID="ltlLevel" runat="server"></asp:Literal></div>

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
            <asp:TemplateColumn HeaderText="字段项名">
				<ItemTemplate>
					<asp:Literal ID="ltlItemName" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="字段项值">
				<ItemTemplate>
					<asp:Literal ID="ltlItemValue" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="上升">
				<ItemTemplate>
					<asp:HyperLink ID="hlUpLinkButton" runat="server"><img src="../../SiteFiles/bairong/icons/up.gif" border="0" alt="上升" /></asp:HyperLink>
				</ItemTemplate>
				<ItemStyle Width="40" HorizontalAlign="center" />
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="下降">
				<ItemTemplate>
					<asp:HyperLink ID="hlDownLinkButton" runat="server"><img src="../../SiteFiles/bairong/icons/down.gif" border="0" alt="下降" /></asp:HyperLink>
				</ItemTemplate>
				<ItemStyle Width="40" HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="50" HorizontalAlign="center" />
			</asp:TemplateColumn>
			<asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal>
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
					<asp:Button class="button" id="AddButton" Text="添加字段项" runat="server" />&nbsp;&nbsp;
                    <asp:Button class="button" id="ReturnButton" Text="返 回" runat="server" />
				</td></tr>
			</table>
		</td>
	</tr>
</table>

</form>

</body>
</html>