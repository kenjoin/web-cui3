<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentTags" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<style type="text/css">
.tag_popularity_1 { FONT-SIZE: 12px; font-weight:normal !important; COLOR: #104d6c; }
.tag_popularity_2 { FONT-WEIGHT: bold; COLOR: #104d6c; }
.tag_popularity_3 { FONT-WEIGHT: bold; COLOR: #ff0f6f; font-size:14px !important; }
.tag_popularity_4 { FONT-WEIGHT: bold; font-size:16px !important; COLOR: #ff0f6f !important }
</style>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">管理内容标签&nbsp;<a href="http://help.siteserver.cn/manage/187/724.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看内容标签管理帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="5"
			BorderWidth="0"
			AutoGenerateColumns="false"
            AllowPaging="true"
			OnItemDataBound="MyDataGrid_ItemBound"
            OnPageIndexChanged="MyDataGrid_Page"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <PagerStyle Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
      <Columns>
      <asp:TemplateColumn HeaderText="标签">
        <ItemTemplate>
          <asp:Literal ID="ltlTagName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="使用次数">
        <ItemTemplate>
          <asp:Literal ID="ltlCount" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> &nbsp;
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:LinkButton ID="pageFirst" OnClick="NavigationButtonClick" CommandName="FIRST" Runat="server">首页</asp:LinkButton>
              |
              <asp:LinkButton ID="pagePrevious" OnClick="NavigationButtonClick" CommandName="PREVIOUS" Runat="server">前页</asp:LinkButton>
              |
              <asp:LinkButton ID="pageNext" OnClick="NavigationButtonClick" CommandName="NEXT" Runat="server">后页</asp:LinkButton>
              |
              <asp:LinkButton ID="pageLast" OnClick="NavigationButtonClick" CommandName="LAST" Runat="server">尾页</asp:LinkButton></td>
            <td align="right"> 分页
              <asp:Label Enabled=False Runat=server ID="currentPage" /></td>
          </tr>
          <tr>
            <td><br>
              <asp:Button class="button" id="AddTag" Text="添加标签" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>