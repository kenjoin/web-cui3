<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundChannelSpec" %>
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
    <div class="columntitle">栏目：<asp:Literal ID="ltlNodeName" runat="server"></asp:Literal></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="1"
			BorderWidth="0"
			AutoGenerateColumns="false"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn HeaderText="规格">
        <ItemTemplate>&nbsp;<asp:Literal ID="ltlIndex" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="规格名称">
        <ItemTemplate>&nbsp;<asp:Literal ID="ltlSpecName" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="规格值">
        <ItemTemplate><div class="specItem">&nbsp;<asp:Literal ID="ltlValues" runat="server"></asp:Literal></div></ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal> </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal> </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><input type="button" class="button" onClick="javascript:location.href='background_channel.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>