<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundInput" %>
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
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">提交表单管理&nbsp;<a href="http://help.siteserver.cn/function/196/746.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看提交表单管理帮助" align="absmiddle"></a></div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="InputID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="提交表单名称">
        <ItemTemplate> &nbsp;<%#DataBinder.Eval(Container.DataItem,"InputName")%> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="需要审核">
        <ItemTemplate> &nbsp;<%#GetIsCheckedHtml((string)DataBinder.Eval(Container.DataItem,"IsChecked"))%> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="需要回复">
        <ItemTemplate> &nbsp;<%#GetIsCodeValidateHtml((string)DataBinder.Eval(Container.DataItem,"IsReply"))%> </ItemTemplate>
        <ItemStyle Width="60" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="添加日期"
				DataField="AddDate"
				DataFormatString="{0:yyyy-MM-dd}"
				ReadOnly="true">
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:BoundColumn>
      <asp:TemplateColumn HeaderText="上升">
        <ItemTemplate>
          <asp:Literal ID="UpLink" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="下降">
        <ItemTemplate>
          <asp:Literal ID="DownLink" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate>
          <asp:Literal ID="StyleUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="TemplateUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="MailSMSUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="PreviewUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="EditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ExportUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate> <a href="background_input.aspx?Delete=True&PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&InputID=<%# DataBinder.Eval(Container.DataItem,"InputID")%>" onClick="javascript:return confirm('此操作将删除提交表单“<%# DataBinder.Eval(Container.DataItem,"InputName")%>”及相关数据，确认吗？');">删除</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td ><asp:Button class="button" id="AddInput" Text="添加提交表单" runat="server" />
              &nbsp;&nbsp;
              <asp:Button class="button" id="Import" Text="导入提交表单" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>