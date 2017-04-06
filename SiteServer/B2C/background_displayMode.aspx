<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundDisplayMode" %>
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
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td class="mframe-t-left"></td>
    <td class="mframe-t-mid" style="cursor:hand;" onClick="_collapseElementByID('Content');" onselectstart='return false;'><span class="mframe-t-text">内容显示方式管理
      </div>
      <table width="95%" align="center" cellspacing="0" cellpadding="0" id="Content">
      <tr>
        <td class="mframe-m-left"></td>
        <td class="mframe-m-mid"><ASP:DataGrid id="DataGrid_Content" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="DisplayModeENName"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
            <HeaderStyle HorizontalAlign="center" Height="25" />
            <EditItemStyle CssClass="tdbg-dark" />
            <ItemStyle Height="23"/>
            <Columns>
            <asp:BoundColumn
				HeaderText="显示方式标识"
				DataField="DisplayModeENName"
				ReadOnly="true">
              <ItemStyle HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:BoundColumn
				HeaderText="显示方式名称"
				DataField="DisplayModeCNName"
				ReadOnly="true">
              <ItemStyle HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:TemplateColumn HeaderText="默认显示方式">
              <ItemTemplate> <%#GetIsDefaultImageHtml((string)DataBinder.Eval(Container.DataItem,"IsDefault"))%> </ItemTemplate>
              <ItemStyle Width="100" HorizontalAlign="center" />
            </asp:TemplateColumn>
            <asp:TemplateColumn>
              <ItemTemplate> <a <%#(IsDefault((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "style='display:none'" : ""%> href="background_displayMode.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&DisplayModeENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>&IsChannelDisplay=<%# DataBinder.Eval(Container.DataItem,"IsChannelDisplay")%>&SetDefault=True" onClick="javascript:return confirm('此操作将把显示方式“<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>”设为默认，确认吗？');">设为默认</a> </ItemTemplate>
              <ItemStyle Width="50" HorizontalAlign="center" />
            </asp:TemplateColumn>
            <asp:TemplateColumn>
              <ItemTemplate> <a href="background_displayModeAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&ENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>">编辑</a> </ItemTemplate>
              <ItemStyle Width="50" HorizontalAlign="center" />
            </asp:TemplateColumn>
            <asp:TemplateColumn>
              <ItemTemplate> <a href="background_displayModeTranslate.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&ENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>" >转移</a> </ItemTemplate>
              <ItemStyle Width="50" HorizontalAlign="center" />
            </asp:TemplateColumn>
            <asp:TemplateColumn>
              <ItemTemplate> <a <%#(IsDefault((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "style='display:none'" : ""%> href="background_displayMode.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&Delete=True&ENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>" onClick="javascript:return confirm('此操作将删除显示方式“<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>”，确认吗？');">删除</a> </ItemTemplate>
              <ItemStyle Width="50" HorizontalAlign="center" />
            </asp:TemplateColumn>
            </Columns>
          </ASP:DataGrid>
          </DIV>
          <table width="90%" align="center" cellspacing="0" cellpadding="0" >
            <tr>
              <td  align="center"><a href="background_displayModeAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&IsChannel=False" >添加内容显示方式</a></td>
            </tr>
          </table>
          <br>
          <table width="95%" align="center" cellspacing="0" cellpadding="0">
          <tr>
            <td class="mframe-t-left"></td>
            <td class="mframe-t-mid" style="cursor:hand;" onClick="_collapseElementByID('ChannelTemplate');" onselectstart='return false;'><span class="mframe-t-text">栏目显示方式管理
              </div>
              <table width="95%" align="center" cellspacing="0" cellpadding="0" id="ChannelTemplate">
              <tr>
                <td class="mframe-m-left"></td>
                <td class="mframe-m-mid"><ASP:DataGrid id="DataGrid_Channel" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="DisplayModeENName"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
                    <HeaderStyle HorizontalAlign="center" Height="25" />
                    <EditItemStyle CssClass="tdbg-dark" />
                    <ItemStyle Height="23"/>
                    <Columns>
                    <asp:BoundColumn
				HeaderText="显示方式标识"
				DataField="DisplayModeENName"
				ReadOnly="true">
                      <ItemStyle HorizontalAlign="center" />
                    </asp:BoundColumn>
                    <asp:BoundColumn
				HeaderText="显示方式名称"
				DataField="DisplayModeCNName"
				ReadOnly="true">
                      <ItemStyle HorizontalAlign="center" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="默认显示方式">
                      <ItemTemplate> <%#GetIsDefaultImageHtml((string)DataBinder.Eval(Container.DataItem,"IsDefault"))%> </ItemTemplate>
                      <ItemStyle Width="100" HorizontalAlign="center" />
                    </asp:TemplateColumn>
                    <asp:TemplateColumn>
                      <ItemTemplate> <a <%#(IsDefault((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "style='display:none'" : ""%> href="background_displayMode.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&DisplayModeENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>&IsChannelDisplay=<%# DataBinder.Eval(Container.DataItem,"IsChannelDisplay")%>&SetDefault=True" onClick="javascript:return confirm('此操作将把显示方式“<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>”设为默认，确认吗？');">设为默认</a> </ItemTemplate>
                      <ItemStyle Width="50" HorizontalAlign="center" />
                    </asp:TemplateColumn>
                    <asp:TemplateColumn>
                      <ItemTemplate> <a href="background_displayModeAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&ENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>">编辑</a> </ItemTemplate>
                      <ItemStyle Width="50" HorizontalAlign="center" />
                    </asp:TemplateColumn>
                    <asp:TemplateColumn>
                      <ItemTemplate> <a href="background_displayModeTranslate.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&ENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>" >转移</a> </ItemTemplate>
                      <ItemStyle Width="50" HorizontalAlign="center" />
                    </asp:TemplateColumn>
                    <asp:TemplateColumn>
                      <ItemTemplate> <a <%#(IsDefault((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "style='display:none'" : ""%> href="background_displayMode.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&Delete=True&ENName=<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>" onClick="javascript:return confirm('此操作将删除显示方式“<%# DataBinder.Eval(Container.DataItem,"DisplayModeENName")%>”，确认吗？');">删除</a> </ItemTemplate>
                      <ItemStyle Width="50" HorizontalAlign="center" />
                    </asp:TemplateColumn>
                    </Columns>
                  </ASP:DataGrid>
                  </DIV>
                  <table width="90%" align="center" cellspacing="0" cellpadding="0" >
                    <tr>
                      <td align="center" width="31%"><a href="background_displayModeAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&IsChannel=True" >添加栏目显示方式</a></td>
                    </tr>
                  </table>
</form>
</body>
</html>