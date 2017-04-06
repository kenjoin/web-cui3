<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTrackerCurrentVisitors" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">最近访问统计</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			AllowPaging="true"
			DataKeyField="TrackingID"
			OnPageIndexChanged="MyDataGrid_Page"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="23"/>
      <PagerStyle Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
      <Columns>
      <asp:BoundColumn
				HeaderText="访问时间"
				DataField="AccessDateTime"
				DataFormatString="{0:yyyy-MM-dd HH:mm:ss.fff}"
				ReadOnly="true">
        <ItemStyle Width="70" Wrap="true" HorizontalAlign="left" />
      </asp:BoundColumn>
      <asp:BoundColumn
				HeaderText="IP地址"
				DataField="IPAddress"
				ReadOnly="true">
        <ItemStyle Width="70" Wrap="true" HorizontalAlign="left" />
      </asp:BoundColumn>
      <asp:BoundColumn
				HeaderText="访问页面"
				DataField="PageUrl"
				ReadOnly="true">
        <ItemStyle Wrap="true" HorizontalAlign="left" />
      </asp:BoundColumn>
      <asp:BoundColumn
				HeaderText="来路"
				DataField="Referrer"
				ReadOnly="true">
        <ItemStyle Wrap="true" HorizontalAlign="left" />
      </asp:BoundColumn>
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
