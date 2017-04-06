<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundTemplateInclude" %>
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
</head>
<body>
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">包含文件管理&nbsp;<a href="http://help.siteserver.cn/manage/213/781.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看包含文件管理帮助" align="absmiddle"></a></div>
    <div class="tips">提示：包含文件在站点目录 include 中，模板中使用 &lt;stl:include file="/include/包含文件.html"&gt;&lt;/stl:include&gt; 引用</div>
    <div class="columncontent">
      <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
            BorderWidth="0"
			AutoGenerateColumns="false"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
        <HeaderStyle HorizontalAlign="center" Height="25" />
        <EditItemStyle CssClass="tdbg-dark" />
        <ItemStyle Height="23"/>
        <Columns>
        <asp:TemplateColumn
				HeaderText="文件名称">
          <ItemTemplate> <%# Container.DataItem %> </ItemTemplate>
          <ItemStyle HorizontalAlign="left" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="文件编码">
          <ItemTemplate> <%# GetCharset((string)Container.DataItem) %> </ItemTemplate>
          <ItemStyle Width="160" HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:TemplateColumn>
          <ItemTemplate> <a href="<%=PublishmentSystemUrl%>/include/<%# Container.DataItem %>" target="_blank">查看</a> </ItemTemplate>
          <ItemStyle Width="70" HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:TemplateColumn>
          <ItemTemplate> <a href="background_templateIncludeAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&FileName=<%# Container.DataItem %>">编辑</a> </ItemTemplate>
          <ItemStyle Width="70" HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:TemplateColumn>
          <ItemTemplate> <a href="background_templateInclude.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&Delete=True&FileName=<%# Container.DataItem %>" onClick="javascript:return confirm('此操作将删除包含文件“<%# Container.DataItem %>”，确认吗？');">删除</a> </ItemTemplate>
          <ItemStyle Width="70" HorizontalAlign="center" />
        </asp:TemplateColumn>
        </Columns>
      </ASP:DataGrid>
    </div>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><input type=button class="button" onClick="location.href='background_templateIncludeAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="添 加" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>