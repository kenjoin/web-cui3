<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundChannelTableStyle" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="b2c" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">栏目选择</div>
    <div class="columnsubtitle" style="height:28px; padding:5px;"> 栏目：
      <asp:DropDownList ID="NodeIDDropDownList" OnSelectedIndexChanged="Redirect" AutoPostBack="true" runat="server"></asp:DropDownList>
      &nbsp;&nbsp; </div>
  </DIV>
  <DIV class="column">
    <div class="columntitle">字段管理</div>
    <div class="tips">
      <asp:Literal ID="ltlSummary" runat="server"></asp:Literal>
    </div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
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
				HeaderText="字段名">
        <ItemTemplate>
          <asp:Literal ID="ltlAttributeName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="140" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="显示名称">
        <ItemTemplate>
          <asp:Literal ID="ltlDisplayName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="140" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="表单提交类型">
        <ItemTemplate>
          <asp:Literal ID="ltlInputType" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="字段类型">
        <ItemTemplate>
          <asp:Literal ID="ltlFieldType" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="是否显示">
        <ItemTemplate>
          <asp:Literal ID="ltlIsVisible" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="验证规则">
        <ItemTemplate>
          <asp:Literal ID="ltlValidate" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="上升">
        <ItemTemplate>
          <asp:HyperLink ID="UpLinkButton" runat="server"><img src="../Pic/icon/up.gif" border="0" alt="上升" /></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="下降">
        <ItemTemplate>
          <asp:HyperLink ID="DownLinkButton" runat="server"><img src="../Pic/icon/down.gif" border="0" alt="下降" /></asp:HyperLink>
        </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="显示样式">
        <ItemTemplate>
          <asp:Literal ID="ltlEditStyle" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="120" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="表单验证">
        <ItemTemplate>
          <asp:Literal ID="ltlEditValidate" runat="server"></asp:Literal>
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
            <td><asp:Button class="button" id="AddStyle" Text="新增虚拟字段" runat="server" />
              &nbsp;
              <asp:Button class="button" id="AddStyles" Text="批量新增虚拟字段" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Import" Text="导 入" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Export" Text="导 出" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Return" Text="返 回" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>