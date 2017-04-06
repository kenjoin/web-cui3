<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsoleAuxiliaryTable" %>
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
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">辅助表管理&nbsp;<a href="http://help.siteserver.cn/manage/222/805.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看辅助表管理帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="1" BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="TableENName"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="23"/>
      <PagerStyle Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
      <Columns>
      <asp:TemplateColumn>
        <ItemTemplate> <a href="console_tableMetadata.aspx?ENName=<%#DataBinder.Eval(Container.DataItem,"TableENName")%>&TableType=<%#DataBinder.Eval(Container.DataItem,"AuxiliaryTableType")%>" style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>">管理</a> </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="辅助表标识">
        <ItemTemplate> <span style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>"><%#DataBinder.Eval(Container.DataItem,"TableENName")%></span> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="辅助表名称">
        <ItemTemplate> <a style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>" href="console_auxiliaryTableAdd.aspx?ENName=<%#DataBinder.Eval(Container.DataItem,"TableENName")%>" ><%#DataBinder.Eval(Container.DataItem,"TableCNName")%></a> </ItemTemplate>
        <ItemStyle Width="160" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="类型">
        <ItemTemplate> <span style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>"> <%# GetAuxiliatyTableType(DataBinder.Eval(Container.DataItem,"AuxiliaryTableType").ToString())%></span> </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="被使用数目">
        <ItemTemplate> <span style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>"> <%#GetTableUsedNum(DataBinder.Eval(Container.DataItem,"TableENName").ToString(), DataBinder.Eval(Container.DataItem,"AuxiliaryTableType").ToString())%></span> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="是否存在">
        <ItemTemplate> <span style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>"> <%#GetYesOrNo((string)DataBinder.Eval(Container.DataItem,"IsCreatedInDB"))%></span> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="创建后修改">
        <ItemTemplate> <span style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>"> <%# GetIsChangedAfterCreatedInDB(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%></span> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <a <%# GetTableUsedNum(DataBinder.Eval(Container.DataItem,"TableENName").ToString(), DataBinder.Eval(Container.DataItem,"AuxiliaryTableType").ToString()) == 0 ? "" : "style='display:none'"%> href="console_auxiliaryTable.aspx?Delete=True&ENName=<%# DataBinder.Eval(Container.DataItem,"TableENName")%>" onClick="javascript:return confirm('此操作将删除辅助表“<%# DataBinder.Eval(Container.DataItem,"TableCNName")%>”，如果辅助表已在数据库中建立，将同时删除建立的辅助表，确认吗？');" style="color:<%# GetFontColor(DataBinder.Eval(Container.DataItem,"IsCreatedInDB").ToString(), DataBinder.Eval(Container.DataItem,"IsChangedAfterCreatedInDB").ToString())%>">删除</a> </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
</form>
</body>
</html>