<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundSpec" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<style>
.specItem { padding-top:3px; padding-bottom:3px; }
.specItem span { padding-top: 2px; padding-right: 6px; padding-bottom: 2px; padding-left: 6px; margin-right:5px; border-color: #999999; border-width: 1px; border-style: solid; background-color:#FFF; }
</style>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">规格管理</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="SpecID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn HeaderText="规格名称">
        <ItemTemplate> &nbsp;<%#DataBinder.Eval(Container.DataItem,"SpecName")%> </ItemTemplate>
        <ItemStyle HorizontalAlign="center" Width="80" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="类型">
        <ItemTemplate>
          <asp:Literal ID="ltlIsIcon" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="center" Width="60" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="规格值">
        <ItemTemplate>
          <div class="specItem">
            <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
          </div>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlItemUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <a href="background_spec.aspx?Delete=True&PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&SpecID=<%# DataBinder.Eval(Container.DataItem,"SpecID")%>" onClick="javascript:return confirm('此操作将删除规格“<%# DataBinder.Eval(Container.DataItem,"SpecName")%>”及相关数据，确认吗？');">删除</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td ><asp:Button class="button" id="AddSpec" Text="添加规格" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>