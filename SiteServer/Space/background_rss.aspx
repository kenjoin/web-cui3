<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerRss" %>
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
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">订阅管理</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="1" BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="RssID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn>
        <ItemTemplate> <%# GetEditHtml(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"RssID")))%> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="订阅名称">
        <ItemTemplate> <a href='<%# DataBinder.Eval(Container.DataItem,"NavigationUrl")%>' target="_blank"><%# DataBinder.Eval(Container.DataItem,"RssTitle")%></a> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <%# GetDeleteHtml(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"RssID")), (string)DataBinder.Eval(Container.DataItem,"RssTitle"))%> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%">
    <tr>
      <td><asp:Button CssClass="button" id="AddRss" Text="添加订阅" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>