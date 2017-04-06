<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTask" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal ID="Literal_ServiceName" runat="server"></asp:Literal>
      任务管理&nbsp;<a href="http://help.siteserver.cn/function/206.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看定时任务管理
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
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn HeaderText="所属站点">
        <ItemTemplate>
          <asp:Literal ID="ltlSite" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="160" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="任务名称">
        <ItemTemplate>
          <asp:Literal ID="ltlTaskName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="执行周期">
        <ItemTemplate>
          <asp:Literal ID="ltlFrequencyType" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="最近一次执行时间">
        <ItemTemplate>
          <asp:Literal ID="ltlLastExecuteDate" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="是否启用">
        <ItemTemplate>
          <asp:Literal ID="ltlIsEnabled" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditHtml" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEnabledHtml" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlDeleteHtml" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </div>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:Button class="button" id="AddTask" Text="添加任务" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</HTML>
