<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundSSOApp" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">SSO应用列表</div>
    <div class="tips">如果出现“通信失败”提示，请编辑对应应用的访问地址或者对应IP地址。</div>
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
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn HeaderText="应用ID">
        <ItemTemplate> <nobr>
          <asp:Literal ID="ltlAppID" runat="server"></asp:Literal>
          </nobr> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="应用名称">
        <ItemTemplate> <nobr>
          <asp:Literal ID="ltlAppName" runat="server"></asp:Literal>
          </nobr> </ItemTemplate>
        <ItemStyle Width="150" HorizontalAlign="left"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="访问地址">
        <ItemTemplate>
          <asp:Literal ID="ltlUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="状态">
        <ItemTemplate>
          <asp:Literal ID="ltlStatus" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
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
  </div>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><input class="button" type="button" onClick="location.href='background_ssoAppAdd.aspx';return false;" value="添加新应用" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>