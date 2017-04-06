<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundVote" %>
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
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">管理投票&nbsp;<a href="http://help.siteserver.cn/function/197/749.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看投票管理帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			AllowPaging="true"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="VoteID"
			OnPageIndexChanged="MyDataGrid_Page"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="25"/>
      <PagerStyle Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
      <Columns>
      <asp:TemplateColumn
				HeaderText="投票名称">
        <ItemTemplate> &nbsp;
          <asp:Literal ID="ltlVoteName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="投票标题(点击查看)">
        <ItemTemplate>
          <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="IP地址">
        <ItemTemplate>
          <asp:Literal ID="ltlIPAddress" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="<input type=&quot;checkbox&quot; onclick=&quot;_checkFormAll(this.checked)&quot;>">
        <ItemTemplate>
          <input type="checkbox" name="VoteIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "VoteID")%>' />
        </ItemTemplate>
        <ItemStyle Width="20" HorizontalAlign="center"/>
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
            <td colspan="2"><br>
              <asp:Button class="button" id="AddVote" OnClick="AddVote_OnClick" Text="添加投票" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Delete" Text="删 除" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>