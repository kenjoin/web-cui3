<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundDBTableStructure" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">数据库表结构查看器</div>
    <table width="100%" align="center" cellpadding="4" cellspacing="4">
      <tr>
        <td width="240" align="right"><bairong:help HelpText="数据库列表" Text="数据库列表：" runat="server" ></bairong:help></td>
        <td width="50" align="center" valign="middle">&nbsp;</td>
        <td align="left"><bairong:help HelpText="数据库包含的表及视图列表" Text="表及视图列表：" runat="server" ></bairong:help></td>
      </tr>
      <tr>
        <td width="240" align="right"><asp:ListBox ID="DatabasesListBox" OnSelectedIndexChanged="DatabasesListBox_OnSelectedIndexChanged" AutoPostBack="true" SelectionMode="Single" Rows="10" runat="server"></asp:ListBox></td>
        <td width="50" align="center" valign="middle"></td>
        <td align="left"><asp:ListBox ID="TablesAndViewsListBox" OnSelectedIndexChanged="TablesAndViewsListBox_OnSelectedIndexChanged" AutoPostBack="true" SelectionMode="Single" Rows="10" runat="server"></asp:ListBox></td>
      </tr>
      <tr  style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td colspan="3">&nbsp;</td>
      </tr>
    </table>
    <table cellpadding="3" width="100%" align="center">
      <tr>
        <td align="center"><asp:HyperLink Font-Bold="true" ID="TableNameHyperLink" runat="server"></asp:HyperLink></td>
      </tr>
      <tr>
        <td><ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2" BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="ColumnName"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
            <HeaderStyle HorizontalAlign="center" Height="25" />
            <ItemStyle Height="25"/>
            <Columns>
            <asp:BoundColumn
				HeaderText="  "
				DataField="AutoIncrement" >
              <ItemStyle HorizontalAlign="center" Width="40" />
            </asp:BoundColumn>
            <asp:BoundColumn
				HeaderText="字段名"
				DataField="ColumnName" >
              <ItemStyle HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:BoundColumn
				HeaderText="数据类型"
				DataField="DataType" >
              <ItemStyle Width="120" HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:BoundColumn
				HeaderText="数据长度"
				DataField="Length" >
              <ItemStyle Width="120" HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:BoundColumn
				HeaderText="数据精度"
				DataField="Precision" >
              <ItemStyle Width="120" HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:BoundColumn
				HeaderText="小数位数"
				DataField="Scale" >
              <ItemStyle Width="120" HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:TemplateColumn
				HeaderText="属性">
              <ItemTemplate> <%#GetColumnStat((bool)DataBinder.Eval(Container.DataItem,"IsPrimaryKey"), (bool)DataBinder.Eval(Container.DataItem,"IsNullable"), (bool)DataBinder.Eval(Container.DataItem,"IsIdentity")) %> </ItemTemplate>
              <ItemStyle Width="130" HorizontalAlign="center"/>
            </asp:TemplateColumn>
            <asp:BoundColumn
				HeaderText="默认值"
				DataField="DefaultValue" >
              <ItemStyle Width="120" HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:TemplateColumn
				HeaderText="关系">
              <ItemTemplate>
                <asp:LinkButton Visible='<%#GetForeignLinkButtonVisible((string)DataBinder.Eval(Container.DataItem,"ForeignColumnName"), (string)DataBinder.Eval(Container.DataItem,"ForeignTableName")) %>' Text='<%#GetForeignLinkButtonText((string)DataBinder.Eval(Container.DataItem,"ForeignColumnName"), (string)DataBinder.Eval(Container.DataItem,"ForeignTableName")) %>' CommandArgument='<%#Convert.ToInt32(DataBinder.Eval(Container.DataItem,"ForeignTableID")) %>' OnCommand="ForeignLinkButton_OnCommand" runat="server"></asp:LinkButton>
              </ItemTemplate>
              <ItemStyle Width="130" HorizontalAlign="center"/>
            </asp:TemplateColumn>
            </Columns>
          </ASP:DataGrid></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
