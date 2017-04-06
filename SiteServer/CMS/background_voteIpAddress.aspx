<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundVoteIPAddress" %>
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
  <br>
  <DIV class="column">
    <div class="columntitle">IP地址列表</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="VoteIPAddressID"
			AllowPaging="true"
			OnPageIndexChanged="MyDataGrid_Page"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="23"/>
      <PagerStyle Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
      <Columns>
      <asp:TemplateColumn
				HeaderText="IP地址">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"IPAddress")%> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="用户">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"UserName")%> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="投票时间"
				DataField="AddDate"
				DataFormatString="{0:yyyy-MM-dd HH:mm}"
				ReadOnly="true">
        <ItemStyle HorizontalAlign="left" />
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
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center" >&nbsp;
        <input type=button class="button" onClick="location.href='background_vote.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
        </td>
    </tr>
  </table>
</form>
</body>
</html>