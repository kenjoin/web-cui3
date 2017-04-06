<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundSeoMetaList" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<bairong:Code type="Style" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script>
	var previousID;
	function toggleAppare(id){
		if (!_isNull(previousID) && _get(previousID).style.display == '' && previousID != id){
			_get(previousID).style.display = 'none';
		}
		$('#' + id).toggle();
		previousID = id;
	}
</script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" Style="margin:0px" runat="server">
  <div class="column">
    <div class="columntitle">页面元数据设置&nbsp;<a href="http://help.siteserver.cn/function/159/365.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看搜索引擎优化帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="SeoMetaID"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="23"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="名称">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"SeoMetaName")%> </ItemTemplate>
        <ItemStyle Width="140" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="页面标题">
        <ItemTemplate> <%#GetPageTitle((string)DataBinder.Eval(Container.DataItem,"PageTitle"))%> </ItemTemplate>
        <ItemStyle Wrap="false" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="是否默认">
        <ItemTemplate> <span <%#(IsDefault((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "" : "style='visibility:hidden'"%>>
          <asp:Image ImageUrl="~/sitefiles/bairong/icons/default.gif" style=" vertical-align:middle" runat="server"></asp:Image>
          </span> </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:HyperLink ID="ViewLink" runat="server" NavigateUrl="javascript:undefined;" Text="查看" ToolTip="点击查看此项"></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:HyperLink ID="EditLink" runat="server" NavigateUrl="javascript:undefined;" Text="编辑" ToolTip="点击编辑此项"></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <nobr><A href="javascript:undefined;" onClick="toggleAppare('<%# DataBinder.Eval(Container.DataItem, "SeoMetaID") %>'); return false;"><IMG src="../../sitefiles/bairong/icons/showMenu.gif" alt="点击显示菜单" width="12" height="14" border="0" align=absMiddle>菜单</A></nobr> <br />
          <div id="<%# DataBinder.Eval(Container.DataItem, "SeoMetaID") %>" class="popupMenu2" style="text-align:left;display:none; width:100px; margin-left:-40px;">
            <div>
              <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;<%#(IsSetDefaultable((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "" : "display:none;"%>"><a href="background_seoMetaList.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&SeoMetaID=<%# DataBinder.Eval(Container.DataItem,"SeoMetaID")%>&SetDefault=True" onClick="javascript:return confirm('此操作将把此项设为默认，确认吗？');">
                <asp:Image ImageUrl="~/sitefiles/bairong/icons/default.gif" style=" vertical-align:middle" runat="server"></asp:Image>
                &nbsp;设为默认</a>&nbsp;</div>
              <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;<%#(IsSetDefaultable((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "display:none;" : ""%>"><a href="background_seoMetaList.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&SeoMetaID=<%# DataBinder.Eval(Container.DataItem,"SeoMetaID")%>&SetDefault=False" onClick="javascript:return confirm('此操作将取消默认，确认吗？');">
                <asp:Image ImageUrl="~/sitefiles/bairong/icons/default.gif" style=" vertical-align:middle" runat="server"></asp:Image>
                &nbsp;取消默认</a>&nbsp;</div>
              <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;"><a href="background_seoMetaList.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&Delete=True&SeoMetaID=<%# DataBinder.Eval(Container.DataItem,"SeoMetaID")%>" onClick="javascript:return confirm('此操作将删除页面元数据“<%# DataBinder.Eval(Container.DataItem,"SeoMetaName")%>”，确认吗？');">
                <asp:Image ImageUrl="~/sitefiles/bairong/icons/delete.gif" runat="server" style=" vertical-align:middle"></asp:Image>
                &nbsp;删除</a>&nbsp;</div>
              <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;"><a href="javascript:undefined;" onClick="toggleAppare('<%# DataBinder.Eval(Container.DataItem, "SeoMetaID") %>'); return false;">
                <asp:Image ImageUrl="~/sitefiles/bairong/icons/cancel.gif" runat="server" style=" vertical-align:middle"></asp:Image>
                &nbsp;关闭菜单</a></div>
            </div>
          </div>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:Button class="button" id="AddSeoMeta" Text="添加页面元数据" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>