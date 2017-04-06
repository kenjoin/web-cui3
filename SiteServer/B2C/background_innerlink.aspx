<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundInnerLink" %>
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
    <div class="columntitle">站内链接管理&nbsp;<a href="http://help.siteserver.cn/function/201/760.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看站内链接管理帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="InnerLinkName"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn>
        <ItemTemplate> <%# GetEditHtml((string)DataBinder.Eval(Container.DataItem,"InnerLinkName"))%> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="链接关键字"
				DataField="InnerLinkName" >
        <ItemStyle Width="160" HorizontalAlign="center" />
      </asp:BoundColumn>
      <asp:TemplateColumn HeaderText="链接地址">
        <ItemTemplate> <a href='<%# GetLinkUrl((string)DataBinder.Eval(Container.DataItem,"LinkUrl"))%>' target="_blank"><%# DataBinder.Eval(Container.DataItem,"LinkUrl")%></a> </ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <%# GetDeleteHtml((string)DataBinder.Eval(Container.DataItem,"InnerLinkName"))%> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:Button class="button" id="AddInnerLink" Text="添加站内链接" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>