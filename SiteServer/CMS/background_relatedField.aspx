<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundRelatedField" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

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
<div class="columntitle">联动字段管理</div>

		<ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="RelatedFieldID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
		<HeaderStyle HorizontalAlign="center" Height="25" />
		<EditItemStyle CssClass="tdbg-dark" />
		<ItemStyle Height="25"/>
	
		<Columns>
            <asp:TemplateColumn
				HeaderText="联动字段名称">
				<ItemTemplate>
					&nbsp;<asp:Literal ID="ltlRelatedFieldName" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="left" />
			</asp:TemplateColumn>
            <asp:TemplateColumn
				HeaderText="级数">
				<ItemTemplate>
					&nbsp;<asp:Literal ID="ltlTotalLevel" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="100" HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn >
				<ItemTemplate>
					<asp:Literal ID="ltlItemsUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="100" HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="50" HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn>
				<ItemTemplate>
                    <asp:Literal ID="ltlExportUrl" runat="server"></asp:Literal>
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
                    <asp:Button ID="AddButton" Text="添加联动字段" CssClass="button" runat="server"></asp:Button>&nbsp;&nbsp;
                    <asp:Button ID="ImportButton" Text="导 入" CssClass="button" runat="server"></asp:Button>
                    </td></tr>
				</table>
		</td>
	</tr>
</table>
</form>

</body>
</html>