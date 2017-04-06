<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundChannelFilter" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
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
			DataKeyField="FilterID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn HeaderText="筛选属性">
        <ItemTemplate>&nbsp;<asp:Literal ID="ltlAttributeName" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="显示名称">
        <ItemTemplate>&nbsp;<asp:Literal ID="ltlDisplayName" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="筛选值">
        <ItemTemplate>&nbsp;<asp:Literal ID="ltlValues" runat="server"></asp:Literal></ItemTemplate>
        <ItemStyle />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="值类型">
        <ItemTemplate> <asp:Literal ID="ltlIsDefaultValues" runat="server"></asp:Literal> </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="上升">
        <ItemTemplate>
          <asp:HyperLink ID="hlUpLinkButton" runat="server"><img src="../Pic/icon/up.gif" border="0" alt="上升" /></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="下降">
        <ItemTemplate>
          <asp:HyperLink ID="hlDownLinkButton" runat="server"><img src="../Pic/icon/down.gif" border="0" alt="下降" /></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <asp:Literal ID="ltlEditValuesUrl" runat="server"></asp:Literal> </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal> </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:Button class="button" id="AddFilter" Text="添加筛选属性" runat="server" />&nbsp;&nbsp;<input type="button" class="button" onClick="javascript:location.href='background_channel.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>