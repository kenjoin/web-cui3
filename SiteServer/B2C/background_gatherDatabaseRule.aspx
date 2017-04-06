<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundGatherDatabaseRule" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head runat="server">
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
    <div class="columntitle">管理数据库采集规则&nbsp;<a href="http://help.siteserver.cn/function/198/752.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看数据库信息采集帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="GatherRuleName"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="23"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="采集规则名称">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"GatherRuleName")%> </ItemTemplate>
        <ItemStyle Width="150" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="采集表名称">
        <ItemTemplate> <%#GetDatabaseInfo((string)DataBinder.Eval(Container.DataItem,"RelatedTableName"))%> </ItemTemplate>
        <ItemStyle HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="最近一次采集时间">
        <ItemTemplate> <%#GetLastGatherDate((DateTime)DataBinder.Eval(Container.DataItem,"LastGatherDate"))%> </ItemTemplate>
        <ItemStyle Width="150" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <IMG style="VERTICAL-ALIGN: middle;" src="../Pic/Icon/gather.gif"><%#GetStartGatherUrl((string)DataBinder.Eval(Container.DataItem,"GatherRuleName"))%> </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <%#GetEidtLink((string)DataBinder.Eval(Container.DataItem,"GatherRuleName"))%> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <a href="background_gatherDatabaseRule.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&GatherRuleName=<%# DataBinder.Eval(Container.DataItem,"GatherRuleName")%>&Copy=True">复制</a> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <a href="background_gatherDatabaseRule.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&GatherRuleName=<%# DataBinder.Eval(Container.DataItem,"GatherRuleName")%>&Delete=True" onClick="javascript:return confirm('此操作将删除采集规则“<%# DataBinder.Eval(Container.DataItem,"GatherRuleName")%>”，确认吗？');">删除</a> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td><input type=button class="button" onClick="location.href='background_gatherDatabaseRuleAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="添加采集规则" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Start" Text="开始采集" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>