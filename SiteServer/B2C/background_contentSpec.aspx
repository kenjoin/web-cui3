<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundContentSpec" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="fancybox" runat="server" />
<style>
.specItem { padding-top:3px; padding-bottom:3px; }
.specItem div { float:left; cursor:pointer; padding-top: 2px; padding-right: 8px; padding-bottom: 2px; padding-left: 6px; margin-right:5px; border-color: #999999; border-width: 1px; border-style: solid; background-color:#FFF; }
.specItem a, .specItem a:visited, .specItem a:hover, .specItem a:active { text-decoration: none; }
.specItem div.cur { padding-top: 1px; padding-right: 7px; padding-bottom: 1px; padding-left: 5px; margin-right:5px; border-color: #c60d0d; border-width: 2px; border-style: solid; background-color:#FFF; }
.specItem div.cur { position:relative; }
span.selected { width: 9px; height: 9px; text-indent: -99em; padding:0px; bottom:0px; margin:0px; border-width:0; overflow: hidden; position: absolute; background-image: url("../pic/iconSelected.gif"); background-repeat: no-repeat; }
.photos img{width:22px; height:22px; margin:2px;}

.specIcon { padding-top:3px; padding-bottom:3px; }
.checked { background-color:#CCC }
.specIcon div { float:left; padding-top: 2px; padding-right: 8px; padding-bottom: 2px; padding-left: 6px; margin-right:5px; border-color: #999999; border-width: 1px; border-style: solid; background-color:#FFF; }
</style>
<script>
$(document).ready(function(){
	
	$("#selAll").click(function() {
		var flag = $(this).attr("checked");
		$("input:checkbox").each(function() {
			$(this).attr("checked", flag);
			if ($(this).is(':checked')){
				$(this).parent().parent().addClass("checked");
			}else{
				$(this).parent().parent().removeClass("checked");
			}
		})
	})
	
	$("input:checkbox").click(function(){
		if ($(this).is(':checked')){
			$(this).parent().parent().addClass("checked");
		}else{
			$(this).parent().parent().removeClass("checked");
		}
	});
});
</script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">设置规格项</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
			AutoGenerateColumns="false"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn HeaderText="规格名称">
        <ItemTemplate> &nbsp;
          <asp:Literal ID="ltlSpecName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="center" Width="80" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="规格值">
        <ItemTemplate>
          <div class="specItem">
            <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
          </div>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="80" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <DIV class="column" id="contents">
    <div class="columntitle">规格货品设置 </div>
    <table id="specContents" cellpadding="4" cellspacing="4">
      <asp:Repeater ID="rptStorage" runat="server">
        <headertemplate>
          <thead>
            <tr>
              <asp:Literal ID="ltlSpec" runat="server"></asp:Literal>
              <th width="120" align="left">库存</th>
              <th width="70"><input type="checkbox" id="selAll" />上架</th>
            </tr>
          </thead>
        </headertemplate>
        <itemtemplate>
          <asp:Literal ID="ltlSpec" runat="server"></asp:Literal>
            <td align="left">
            <asp:Literal ID="ltlStock" runat="server"></asp:Literal>
            </td>
            <td align="center">
            <asp:Literal ID="ltlIsOnSale" runat="server"></asp:Literal>
            </td>
          </tr>
        </itemtemplate>
      </asp:Repeater>
    </table>
    <tr id="specButtonRow">
      <td align="center" colspan="8"><asp:Button class="button" id="Submit" OnClick="Submit_OnClick" text="保 存"  runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="返 回" OnClick="Return_OnClick" runat="server" /></td>
    </tr>
  </DIV>
</form>
</body>
</html>