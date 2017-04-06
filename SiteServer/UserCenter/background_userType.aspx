<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserType" %>
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
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">用户类型设置</div>
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td width="200" align="left"><bairong:help HelpText="选择是否启用用户类型功能" Text="是否启用用户类型功能：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsUserType" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsUserType_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
    </table>
  </DIV>
  <asp:PlaceHolder ID="phUserType" runat="server">
    <DIV class="column">
      <div class="columntitle">用户类型管理</div>
      <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="TypeID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
        <HeaderStyle HorizontalAlign="center" Height="25" />
        <ItemStyle Height="25"/>
        <Columns>
        <asp:BoundColumn
				HeaderText="用户类型"
				DataField="TypeName" >
          <ItemStyle HorizontalAlign="center" />
        </asp:BoundColumn>
        <asp:TemplateColumn HeaderText="默认用户组">
          <ItemTemplate>
            <asp:Literal ID="ltlGroupID" runat="server"></asp:Literal>
          </ItemTemplate>
          <ItemStyle Width="120" HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="用户资料字段">
          <ItemTemplate>
            <asp:Literal ID="ltlStyleUrl" runat="server"></asp:Literal>
          </ItemTemplate>
          <ItemStyle Width="100" HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:TemplateColumn>
          <ItemTemplate>
            <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
          </ItemTemplate>
          <ItemStyle Width="70" HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:TemplateColumn>
          <ItemTemplate> <%# GetDeleteHtml(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"TypeID")), (string)DataBinder.Eval(Container.DataItem,"TypeName"))%> </ItemTemplate>
          <ItemStyle Width="70" HorizontalAlign="center" />
        </asp:TemplateColumn>
        </Columns>
      </ASP:DataGrid>
    </DIV>
    <table width="95%" align="center">
      <tr>
        <td><asp:Button ID="AddButton" class="button" Text="添加用户类型" runat="server" /></td>
      </tr>
    </table>
  </asp:PlaceHolder>
</form>
</body>
</html>