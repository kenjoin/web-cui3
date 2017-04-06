<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.ConsoleSiteTemplate" %>
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
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">站点模板管理&nbsp;<a href="http://help.siteserver.cn/manage/223/812.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看站点模板管理帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="Name"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="站点模板名称">
        <ItemTemplate><asp:Literal ID="ltlTemplateName" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle Width="140" HorizontalAlign="left"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="站点模板文件夹">
        <ItemTemplate><asp:Literal ID="ltlDirectoryName" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="left"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="站点模板介绍">
        <ItemTemplate><asp:Literal ID="ltlDescription" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="创建日期">
        <ItemTemplate><asp:Literal ID="ltlCreationTime" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlDownloadUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="160" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlCreateUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </div>
  
  <table width="95%" align="center">
	<tr>
		<td align="right">
			<table cellpadding="0" cellspacing="0" width="100%">
				<tr><td>
                    <asp:Button class="button" id="Import" Text="导入站点模板" runat="server" />&nbsp;
				</td></tr>
			</table>
		</td>
	</tr>
</table>
  
</form>
</body>
</html>