<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTemplate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<bairong:Code type="Style" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script>
	var previousID;
	function toggleAppare(id){
		if (!_isNull(previousID) && _get(previousID).style.display == '' && previousID != id){
			_get(previousID).style.display = 'none';
		}
		$('#'+id).toggle();
		previousID = id;
	}
</script>
</head>
<body>
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">模板检索&nbsp;<a href="http://help.siteserver.cn/manage/27.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看模板管理帮助" align="absmiddle"></a></div>
    <div class="columnsubtitle" style="height:28px; padding:5px;"> 模板类型：
      <asp:DropDownList ID="TemplateType" AutoPostBack="true" runat="server"></asp:DropDownList>
      &nbsp;&nbsp;
      模板名称/文件名：
      <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="SearchText" Columns="35" runat="server"></asp:TextBox>
      &nbsp;&nbsp;
      <asp:Button class="button" style="margin-bottom:0px;" ID="SearchButton" runat="server" Text="搜 索"></asp:Button>
    </div>
  </DIV>
  <DIV class="column">
    <div class="columntitle">模板管理</div>
    <div class="columncontent">
      <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0" BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="TemplateID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" gridlines="none">
        <HeaderStyle HorizontalAlign="center" Height="25" />
        <EditItemStyle CssClass="tdbg-dark" />
        <ItemStyle Height="23"/>
        <Columns>
        <asp:TemplateColumn
				HeaderText="模板名称">
          <ItemTemplate>
            <asp:Literal ID="ltlTemplateName" runat="server"></asp:Literal>
          </ItemTemplate>
          <ItemStyle HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:BoundColumn
				HeaderText="模板文件"
				DataField="RelatedFileName"
				ReadOnly="true">
          <ItemStyle Width="180" Wrap="false" HorizontalAlign="left" />
        </asp:BoundColumn>
        <asp:TemplateColumn HeaderText="生成文件名">
          <ItemTemplate>
            <asp:Literal ID="ltlFileName" runat="server"></asp:Literal>
          </ItemTemplate>
          <ItemStyle Width="180" Wrap="false" HorizontalAlign="left" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="使用次数">
          <ItemTemplate>
            <asp:Literal ID="ltlUseCount" runat="server"></asp:Literal>
          </ItemTemplate>
          <ItemStyle Width="50" Wrap="false" HorizontalAlign="left" />
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="模板类型/默认模板">
          <ItemTemplate>
            <asp:Literal ID="ltlTemplateType" runat="server"></asp:Literal>
          </ItemTemplate>
          <ItemStyle Width="120" HorizontalAlign="center" />
        </asp:TemplateColumn>
        <asp:TemplateColumn>
          <ItemTemplate> <nobr><A href="javascript:undefined;" onClick="toggleAppare('<%# DataBinder.Eval(Container.DataItem, "TemplateID") %>'); return false;"><IMG src="../../sitefiles/bairong/icons/showMenu.gif" alt="点击显示菜单" width="12" height="14" border="0" align=absMiddle>菜单</A></nobr> <br />
            <div id="<%# DataBinder.Eval(Container.DataItem, "TemplateID") %>" class="popupMenu2" style="text-align:left;display:none; width:100px; margin-left:-40px;">
              <div>
                <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;<%#(IsSetDefaultable((string)DataBinder.Eval(Container.DataItem,"TemplateType"), (string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "" : "display:none;"%>"><a href="background_template.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&TemplateID=<%# DataBinder.Eval(Container.DataItem,"TemplateID")%>&SetDefault=True" onClick="javascript:return confirm('此操作将把此模板设为默认，确认吗？');">
                  <asp:Image ImageUrl="~/sitefiles/bairong/icons/default.gif" style=" vertical-align:middle" runat="server"></asp:Image>
                  &nbsp;设为默认</a>&nbsp;</div>
                <!--<div style="margin-top:5px; margin-bottom:5px; margin-left:5px;"><a href="<%# GetTemplateDesignUrl(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "TemplateID")), (string)DataBinder.Eval(Container.DataItem, "TemplateType")) %>" target="_blank"><asp:Image ImageUrl="~/sitefiles/bairong/icons/edit.gif" style=" vertical-align:middle" runat="server"></asp:Image>&nbsp;可视化编辑</a>&nbsp;</div>-->
                <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;"><a href="background_templateAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&IsCopy=True&TemplateID=<%# DataBinder.Eval(Container.DataItem,"TemplateID")%>">
                  <asp:Image ImageUrl="~/sitefiles/bairong/icons/open.gif" style=" vertical-align:middle" runat="server"></asp:Image>
                  &nbsp;快速复制</a>&nbsp;</div>
                <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;"><a href="background_templateAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&TemplateID=<%# DataBinder.Eval(Container.DataItem,"TemplateID")%>">
                  <asp:Image ImageUrl="~/sitefiles/bairong/icons/edit.gif" style=" vertical-align:middle" runat="server"></asp:Image>
                  &nbsp;编辑</a>&nbsp;</div>
                <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;<%#(IsDeletable((string)DataBinder.Eval(Container.DataItem,"IsDefault"))) ? "" : "display:none"%>"><a href="background_template.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&Delete=True&TemplateID=<%# DataBinder.Eval(Container.DataItem,"TemplateID")%>" onClick="javascript:return confirm('此操作将删除模板“<%# DataBinder.Eval(Container.DataItem,"TemplateName")%>”，确认吗？');">
                  <asp:Image ImageUrl="~/sitefiles/bairong/icons/delete.gif" runat="server" style=" vertical-align:middle"></asp:Image>
                  &nbsp;删除</a>&nbsp;</div>
                <div style="margin-top:5px; margin-bottom:5px; margin-left:5px;"><a href="javascript:undefined;" onClick="toggleAppare('<%# DataBinder.Eval(Container.DataItem, "TemplateID") %>'); return false;">
                  <asp:Image ImageUrl="~/sitefiles/bairong/icons/cancel.gif" runat="server" style=" vertical-align:middle"></asp:Image>
                  &nbsp;关闭菜单</a></div>
              </div>
            </div>
          </ItemTemplate>
          <ItemStyle Width="80" HorizontalAlign="center" />
        </asp:TemplateColumn>
        </Columns>
      </ASP:DataGrid>
    </div>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><input type=button class="button" onClick="location.href='background_templateAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&TemplateType=IndexPageTemplate';" value="添加首页模板" />
              &nbsp;&nbsp;
              <input type=button class="button" onClick="location.href='background_templateAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&TemplateType=ChannelTemplate';" value="添加栏目模板" />
              &nbsp;&nbsp;
              <input type=button class="button" onClick="location.href='background_templateAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&TemplateType=ContentTemplate';" value="添加内容模板" />
              &nbsp;&nbsp;
              <input type=button class="button" onClick="location.href='background_templateAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&TemplateType=FileTemplate';" value="添加单页模板" />
              &nbsp;&nbsp; </td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>