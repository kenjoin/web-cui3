<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundRole" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">管理角色&nbsp;<a href="http://help.siteserver.cn/manage/218/798.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看管理角色帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			AllowPaging="true"
			DataKeyField="RoleName"
			OnItemDataBound="MyDataGrid_ItemBound"
			OnPageIndexChanged="MyDataGrid_Page"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="25"/>
      <PagerStyle Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
      <Columns>
      <asp:TemplateColumn>
        <ItemTemplate> <a href='background_roleAdd.aspx?RoleName=<%# DataBinder.Eval(Container.DataItem,"RoleName")%>&module=<%# Request.QueryString["module"]%>'>修改</a> </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="角色名称"
				DataField="RoleName" >
        <ItemStyle Width="130" HorizontalAlign="left" />
      </asp:BoundColumn>
      <asp:BoundColumn
				HeaderText="备注"
				DataField="Description" > </asp:BoundColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <a href='background_role.aspx?Delete=True&RoleName=<%# DataBinder.Eval(Container.DataItem,"RoleName")%>&ModuleID=<%# Request.QueryString["ModuleID"]%>' onClick="javascript:return confirm('此操作将会删除角色“<%# DataBinder.Eval(Container.DataItem,"RoleName")%>”，确认吗？');">删除</a> </ItemTemplate>
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
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>