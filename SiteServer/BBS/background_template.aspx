<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundTemplate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
<DIV class="column">
<div class="columntitle">模板列表</div>

		<ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
			AutoGenerateColumns="false"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
		<HeaderStyle HorizontalAlign="center" Height="25" />
		<ItemStyle Height="25"/>

		<Columns>
			<asp:TemplateColumn
				HeaderText="模板名称">
				<ItemTemplate>
                    <asp:Literal ID="ltlTemplateName" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="140" HorizontalAlign="center"/>
			</asp:TemplateColumn>
			<asp:BoundColumn
				HeaderText="模板文件夹"
				DataField="Name" >
				<ItemStyle Width="100" HorizontalAlign="center" />
			</asp:BoundColumn>
			<asp:TemplateColumn
				HeaderText="模板介绍">
				<ItemTemplate>
                    <asp:Literal ID="ltlDescription" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="left" />
			</asp:TemplateColumn>
			<asp:TemplateColumn
				HeaderText="样图">
				<ItemTemplate>
                    <asp:Literal ID="ltlSamplePic" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="130" HorizontalAlign="center"/>
			</asp:TemplateColumn>
			<asp:BoundColumn
				HeaderText="建立日期"
				DataField="CreationTime"
				DataFormatString="{0:yyyy-MM-dd}"
				ReadOnly="true">
				<ItemStyle Width="70" HorizontalAlign="center" />
			</asp:BoundColumn>
			<asp:TemplateColumn HeaderText="当前使用模板">
				<ItemTemplate>
					<asp:Literal ID="ltlIsDefault" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="100" HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="70" HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlCreateUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="70" HorizontalAlign="center" />
			</asp:TemplateColumn>
            <asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="70" HorizontalAlign="center" />
			</asp:TemplateColumn>
		</Columns>
	</ASP:DataGrid>

	
</div>
</form>

</body>
</html>