<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundGatherRule" %>
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
    <div class="columntitle">管理Web页面采集规则&nbsp;<a href="http://help.siteserver.cn/function/198/753.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看Web页面信息采集帮助" align="absmiddle"></a></div>
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
        <ItemTemplate>
          <asp:Literal ID="ltlGatherRuleName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="采集网址">
        <ItemTemplate>
          <asp:Literal ID="ltlGatherUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="最近一次采集时间">
        <ItemTemplate>
          <asp:Literal ID="ltlLastGatherDate" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="150" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate>
          <asp:Literal ID="ltlTestGatherUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <IMG style="VERTICAL-ALIGN: middle;" src="../Pic/Icon/gather.gif">
          <asp:Literal ID="ltlStartGatherUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate>
          <asp:Literal ID="ltlEditLink" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate>
          <asp:Literal ID="ltlCopyLink" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate>
          <asp:Literal ID="ltlDeleteLink" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="<input type='checkbox' onClick='_checkFormAll(this.checked)'>">
        <ItemTemplate>
          <input type="checkbox" name="GatherRuleNameCollection" value='<%#DataBinder.Eval(Container.DataItem, "GatherRuleName")%>' />
        </ItemTemplate>
        <ItemStyle Width="20" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td><input type=button class="button" onClick="location.href='background_gatherRuleAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="添加采集规则" />
        &nbsp;&nbsp;
        <input type=button class="button" onClick="<%=GetImportClickString()%>" value="导入采集规则" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Export" Text="导出采集规则" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Start" Text="开始采集" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>
