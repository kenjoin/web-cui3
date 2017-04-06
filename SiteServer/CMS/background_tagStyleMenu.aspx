<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundTagStyleMenu" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">下拉菜单样式</div>
    <ASP:DataGrid id="DataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="MenuDisplayID"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="23"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="样式名称">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"MenuDisplayName")%> </ItemTemplate>
        <ItemStyle Width="180" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="添加日期"
				DataField="AddDate"
				DataFormatString="{0:yyyy-MM-dd}"
				ReadOnly="true">
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:BoundColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <a <%#(IsDefault((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "style='display:none'" : ""%> href="background_tagStyleMenu.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&MenuDisplayID=<%# DataBinder.Eval(Container.DataItem,"MenuDisplayID")%>&SetDefault=True">设为默认</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <a href="background_tagStyleMenuAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&MenuDisplayID=<%# DataBinder.Eval(Container.DataItem,"MenuDisplayID")%>">编辑</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <a <%#(IsDefault((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "style='display:none'" : ""%> href="background_tagStyleMenu.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&Delete=True&MenuDisplayID=<%# DataBinder.Eval(Container.DataItem,"MenuDisplayID")%>" onClick="javascript:return confirm('此操作将删除此菜单显示，确认吗？');">删除</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="left"><input type="button" class="button" onClick="location.href='background_tagStyleMenuAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';return false;" value="添加样式"></td>
    </tr>
    <tr>
      <td><div class="tips">小提示：下拉菜单标签为&lt;stl:menu styleName=&quot;样式名称&quot;&gt;&lt;/stl:menu&gt;，用于显示下拉菜单。<a href="http://help.siteserver.cn/stl/menu.html" target="_blank">查看标签帮助</a></div></td>
    </tr>
  </table>
</form>
</body>
</html>