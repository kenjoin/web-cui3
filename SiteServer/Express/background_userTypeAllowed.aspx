<%@ Page Language="C#" Inherits="SiteServer.Express.BackgroundPages.BackgroundUserTypeAllowed"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">用户类型管理</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="false"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="TypeID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:BoundColumn
				HeaderText="用户类型"
				DataField="TypeName" >
        <ItemStyle HorizontalAlign="center" />
      </asp:BoundColumn>
      <asp:TemplateColumn HeaderText="是否启用">
        <ItemTemplate>
          <asp:Literal ID="ltlIsAllowed" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
</form>
</body>
</html>