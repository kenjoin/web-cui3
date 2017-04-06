<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsolePublishmentSystemUrl" enableViewState = "false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="Style" runat="server" />
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle"> 访问地址管理&nbsp;<a href="http://help.siteserver.cn/redirect/console_publishmentSystemUrl.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看访问地址管理帮助" align="absmiddle"></a> </div>
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
				HeaderText="名称">
        <ItemTemplate> <nobr>&nbsp;
          <asp:Literal ID="TheName" runat="server"></asp:Literal>
          </nobr> </ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="文件夹">
        <ItemTemplate>
          <asp:Literal ID="TheDir" runat="server"></asp:Literal>
        </ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="访问地址">
        <ItemTemplate> <nobr>&nbsp;
          <asp:Literal ID="TheUrl" runat="server"></asp:Literal>
          </nobr> </ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="EditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </div>
</form>
</body>
</html>