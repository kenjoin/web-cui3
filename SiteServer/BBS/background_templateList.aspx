<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundTemplateList" %>
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
<form id="myForm" Style="margin:0px" runat="server">
<bairong:Message runat="server"></bairong:Message>
<DIV class="column">
<div class="columntitle">模板文件管理</div>
<div class="columncontent">
	<ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2" BorderWidth="0"
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
				HeaderText="模板文件">
				<ItemTemplate>
					&nbsp;<asp:Literal ID="ltlName" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="left" />
			</asp:TemplateColumn>
            <asp:TemplateColumn
				HeaderText="编辑">
				<ItemTemplate>
					<asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="80" Wrap="false" HorizontalAlign="center" />
			</asp:TemplateColumn>
		</Columns>
	</ASP:DataGrid>	
</div>
</DIV>
<table width="95%" align="center">
  <tr>
    <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td>
			<input type=button class="button" onClick="location.href='background_template.aspx';" value="返 回" />
		</td>
      </tr>
    </table></td>
  </tr>
</table>

</form>

</body>
</html>