<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsoleTableMetadata" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
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
    <div class="columntitle">辅助表字段管理(<%=Request.QueryString["ENName"]%>)</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="TableMetadataID"
			OnItemCommand="MyDataGrid_ItemCommand"
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
      <asp:TemplateColumn HeaderText="数据类型">
        <ItemTemplate>
          <asp:Literal ID="ltlDataType" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="表单提交类型">
        <ItemTemplate>
          <asp:Literal ID="ltlInputType" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
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
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="上升">
        <ItemTemplate>
          <asp:LinkButton ID="UpLinkButton" CommandName="UP" runat="server"><img src="../Pic/icon/up.gif" border="0" alt="上升" /></asp:LinkButton>
        </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="下降">
        <ItemTemplate>
          <asp:LinkButton ID="DownLinkButton" CommandName="DOWN" runat="server"><img src="../Pic/icon/down.gif" border="0" alt="下降" /></asp:LinkButton>
        </ItemTemplate>
        <ItemStyle Width="40" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="显示样式">
        <ItemTemplate>
          <asp:Literal ID="ltlStyle" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="表单验证">
        <ItemTemplate>
          <asp:Literal ID="ltlEditValidate" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
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
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:Button class="button" ID="AddColumnButton" Text="添加字段" runat="server"></asp:Button>
              <span style="<%=GetCreateDBCommandElementStyle()%>"> &nbsp;&nbsp;
              <input type=button class="button" onClick="location.href='console_tableMetadata.aspx?CreateDB=True&ENName=<%=Request.QueryString["ENName"]%>&TableType=<%=Request.QueryString["TableType"]%>';" value="创建辅助表" />
              </span> <span style="<%=GetDeleteDBCommandElementStyle()%>"> &nbsp;&nbsp;
              <input type=button class="button" onClick="if (confirm('此操作将删除辅助表“<%=Request.QueryString["ENName"]%>”，确认吗？'))location.href='console_tableMetadata.aspx?DeleteDB=True&ENName=<%=Request.QueryString["ENName"]%>&TableType=<%=Request.QueryString["TableType"]%>';" value="删除辅助表" />
              </span> <span style="<%=GetReCreateDBCommandElementStyle()%>"> &nbsp;&nbsp;
              <input type=button class="button" onClick="if (confirm('此操作将覆盖已建立的辅助表，表中已存数据将丢失，确认吗？'))location.href='console_tableMetadata.aspx?ReCreateDB=True&ENName=<%=Request.QueryString["ENName"]%>&TableType=<%=Request.QueryString["TableType"]%>';" value="重新创建辅助表" />
              </span> <span style="<%=GetShowCommandElementStyle()%>"> &nbsp;&nbsp;
              <input type=button class="button" onClick="location.href='console_tableMetadata.aspx?ShowCrateDBCommand=True&ENName=<%=Request.QueryString["ENName"]%>&TableType=<%=Request.QueryString["TableType"]%>';" value="显示创建表SQL命令" />
              </span> &nbsp;&nbsp;
              <input type=button class="button" onClick="location.href='<%=GetReturnUrl() %>';" value="返 回" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <div id="SyncTable" runat="server"> <br>
    <DIV class="column">
      <div class="columntitle">同步辅助表</div>
      <div class="columncontent" style="padding:5px"> <span style="color:#FF0000">此辅助表在创建后被修改，与数据库中的实际表结构有差别，请同步辅助表。</span><br>
        <br>
        <asp:Button class="button" ID="SyncTableButton" Text="同步辅助表" OnClick="SyncTableButton_OnClick" runat="server"></asp:Button>
      </div>
    </DIV>
  </div>
  <div style="<%=GetSQLTableStyle()%>"> <br>
    <DIV class="column">
      <div class="columntitle">创建辅助表SQL命令</div>
      <div class="columncontent" style="padding:5px">
        <asp:Literal id="ltlSqlString" runat="server"/>
      </div>
    </DIV>
  </div>
</form>
</body>
</html>