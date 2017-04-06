<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsolePublishmentSystem" enableViewState = "false" %>
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
    <div class="columntitle">系统站点管理&nbsp;<a href="http://help.siteserver.cn/manage/210/777.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看系统站点管理
帮助" align="absmiddle"></a></div>
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
				HeaderText="站点名称">
        <ItemTemplate> <nobr>&nbsp;
          <asp:Literal ID="ltlPublishmentSystemName" runat="server"></asp:Literal>
          </nobr> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="文件夹">
        <ItemTemplate>
          <asp:Literal ID="ltlPublishmentSystemDir" runat="server"></asp:Literal>
        </ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="创建日期">
        <ItemTemplate>
          <asp:Literal ID="ltlAddDate" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="保存为站点模板">
        <ItemTemplate> <nobr><a href="console_siteTemplateSave.aspx?PublishmentSystemID=<%# Container.DataItem%>">保存</a></nobr> </ItemTemplate>
        <ItemStyle Width="90" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="修改属性">
        <ItemTemplate> <nobr><a href="console_publishmentSystemEdit.aspx?PublishmentSystemID=<%# Container.DataItem%>">修改</a></nobr> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="站点类型转换">
        <ItemTemplate>
          <asp:Literal ID="ltlChangeType" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="90" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="整站替换">
        <ItemTemplate> <nobr><a href="console_publishmentSystemReplace.aspx?PublishmentSystemID=<%# Container.DataItem%>">替换</a></nobr> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="整站删除">
        <ItemTemplate>
          <asp:Literal ID="ltlDelete" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </div>
</form>
</body>
</html>