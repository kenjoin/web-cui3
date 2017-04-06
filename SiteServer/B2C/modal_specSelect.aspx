<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.SpecSelect" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>设置规格项</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" charset="utf-8" src="../../sitefiles/bairong/scripts/independent/validate.js"></script>
<style>
.specItem { padding-top:3px; padding-bottom:3px; }
.specItem div { float:left; cursor:pointer; padding-top: 2px; padding-right: 8px; padding-bottom: 2px; padding-left: 6px; margin-right:5px; border-color: #999999; border-width: 1px; border-style: solid; background-color:#FFF; }
.specItem a, .specItem a:visited, .specItem a:hover, .specItem a:active { text-decoration: none; }
.specItem div.cur { padding-top: 1px; padding-right: 7px; padding-bottom: 1px; padding-left: 5px; margin-right:5px; border-color: #c60d0d; border-width: 2px; border-style: solid; background-color:#FFF; }
.specItem div.cur { position:relative; }
span.selected { width: 9px; height: 9px; text-indent: -99em; padding:0px; bottom:0px; margin:0px; border-width:0; overflow: hidden; position: absolute; background-image: url("../pic/iconSelected.gif"); background-repeat: no-repeat; }
.photos img{width:22px; height:22px; margin:2px;}
</style>
<script>
var trCount = <%=GetSelectedCount()%>;
$(document).ready(function(){
	
	$('.specItem>div').mouseover(function(){
		$(this).addClass("cur");
	}).mouseout(function(){
		if($(this).attr('selected') == 'true') return;
		$(this).removeClass("cur");
	});
	
	$('.specItem div').click(function(){
		var obj = $(this);
		var trID = 'specItem_' + obj.attr("itemID");
		if(obj.attr('selected') == 'true'){
			obj.attr('selected', 'false');
			obj.removeClass("cur");
			$(".selected", obj).hide();
			if ($('#'+trID).length > 0){
				$('#'+trID).insertAfter($("#specButtonRow"));
				$("input[name='selectedIsHide']", '#'+trID).val("True");
				$('#'+trID).hide();
				trCount--;
			}
		}else{
			obj.attr('selected', 'true');
			obj.addClass("cur");
			$(".selected", obj).css("display", "");
			if ($('#'+trID).length == 0){
				var itemID = obj.attr("itemID");
				var itemTitle = obj.attr("itemTitle");
				var iconUrl = '';
				var iconClickString = obj.attr("iconClickString");
				var selectPhotosClickString = obj.attr("selectPhotosClickString");
				var imageUrl = $("img", obj).attr('src');
				var html = '<tr id="' + trID + '" class="tdbg"><td align="center">';
				html += '<input type="hidden" name="selectedItemID" value="' + itemID + '" />';
				html += '<input type="hidden" name="selectedIconUrl" id="selectedIconUrl_' + itemID + '" value="' + iconUrl + '" />';
				html += '<input type="hidden" name="selectedPhotoIDCollection" id="selectedPhotoIDCollection_' + itemID + '" value="" />';
				html += '<input type="hidden" name="selectedIsHide" value="False" />';
				if (<%=GetIsIcon()%>){
					html += '<img src="' + imageUrl + '" alt="' + itemTitle + '" /></td>';
				}else{
					html += itemTitle + '</td>';
				}
				html += '<td align="left"><input type="text" name="selectedTitle" class="colorblur" value="' + itemTitle + '" size="20" /></td>';
				if (<%=GetIsIcon()%>){
					html += '<td align="left"><img id="preview_' + itemID + '" style="display:none" align="absmiddle" />&nbsp;&nbsp;<a href="javascript:;" onClick="' + iconClickString + '">设 置</a>';
				}
				html += '<td align="left"><span id="urls_' + itemID + '"></span><a href="javascript:;" onclick="' + selectPhotosClickString + '">选 择</a></td>';
				html += '<td align="center" style="width:30px;"><a href="javascript:;" onclick="taxis(this, true);return false;"><img src="../Pic/icon/up.gif" border="0" alt="上升" /></a></td>';
				html += '<td align="center" style="width:30px;"><a href="javascript:;" onclick="taxis(this, false);return false;"><img src="../Pic/icon/down.gif" border="0" alt="下降" /></a></td>';
				html += '</tr>';
				$("#specButtonRow").before(html);
			}else{
				$('#'+trID).insertBefore($("#specButtonRow"));
				$("input[name='selectedIsHide']", '#'+trID).val("False");
				$('#'+trID).show();
			}
			trCount++;
		}
	});
});

function taxis(a, isUp){
	if (isUp){
		var tr = $(a).parent().parent();
		if (tr.index() != 1) {
			tr.insertBefore(tr.prev());
		}
	}else{
		var tr = $(a).parent().parent();
		if (tr.index() != trCount) {
			tr.insertAfter(tr.next());
		}
	}
}
</script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="4" width="100%" align="center">
    <tr>
      <td colspan="2" class="tips">请点击对应规格，添加本商品需要的<%=GetSpecName()%></td>
    </tr>
    <tr>
      <td align="right" width="100"><%=GetSpecName()%>：</td>
      <td align="left"><div class="specItem">
          <asp:Literal ID="ltlSpecItems" runat="server"></asp:Literal>
        </div></td>
    </tr>
  </table>
  <TABLE border=0 cellSpacing=2 cellPadding=2 width="95%">
    <tr class="summary-title">
      <th>系统<%=GetSpecName()%></th>
      <th>自定义<%=GetSpecName()%>值</th>
      <%if (GetIsIcon() == "true"){%>
      <th>自定义<%=GetSpecName()%>图片</th>
	  <%}%>
      <th>关联商品相册图片</th>
      <td align="Center" style="width:30px;">&nbsp;</td>
      <td align="Center" style="width:30px;">&nbsp;</td>
    </tr>
    <asp:Repeater ID="rptSelected" runat="server">
      <itemtemplate>
        <tr class="tdbg" id="specItem_<%#DataBinder.Eval(Container.DataItem,"ItemID")%>">
          <td align="center">
            <input name="selectedItemID" type="hidden" value="<%#DataBinder.Eval(Container.DataItem,"ItemID")%>" />
            <input name="selectedIconUrl" id="selectedIconUrl_<%#DataBinder.Eval(Container.DataItem,"ItemID")%>" type="hidden" value="<%#DataBinder.Eval(Container.DataItem,"IconUrl")%>" />
            <input name="selectedPhotoIDCollection" id="selectedPhotoIDCollection_<%#DataBinder.Eval(Container.DataItem,"ItemID")%>" type="hidden" value="<%#ParsePhotoIDCollection((string)DataBinder.Eval(Container.DataItem,"PhotoIDCollection"))%>" />
            <input name="selectedIsHide" type="hidden" value="False" />
            <%#GetSystemSpecItemHTML((int)DataBinder.Eval(Container.DataItem,"ItemID"))%>
          </td>
          <td align="left"><input name="selectedTitle" class="colorblur" type="text" size="20" value="<%#DataBinder.Eval(Container.DataItem,"Title")%>" /></td>
          <%if (GetIsIcon() == "true"){%>
          <td align="left"><img id="preview_<%#DataBinder.Eval(Container.DataItem,"ItemID")%>" align="absMiddle" src="<%#ParseIconUrl((string)DataBinder.Eval(Container.DataItem,"IconUrl"))%>" style="display:<%#string.IsNullOrEmpty((string)DataBinder.Eval(Container.DataItem,"IconUrl")) ? "none" : ""%>" />&nbsp;&nbsp;<a href="javascript:;" onClick="<%#GetIconClickString("selectedIconUrl_" + (int)DataBinder.Eval(Container.DataItem,"ItemID"), "preview_" + (int)DataBinder.Eval(Container.DataItem,"ItemID"), (string)DataBinder.Eval(Container.DataItem,"IconUrl"))%>">设 置</a></td>
		  <%}%>
          <td align="left"><span id="urls_<%#DataBinder.Eval(Container.DataItem,"ItemID")%>" class="photos"><%#ParsePhotoIDCollectionHTML((string)DataBinder.Eval(Container.DataItem,"PhotoIDCollection"))%></span><a href="javascript:;" onClick="<%#GetSelectPhotosClickString("selectedPhotoIDCollection_" + (int)DataBinder.Eval(Container.DataItem,"ItemID"), "urls_" + (int)DataBinder.Eval(Container.DataItem,"ItemID"))%>">选 择</a></td>
          <td align="center" style="width: 30px;"><a onClick="taxis(this, true);return false;" href="javascript:;"><img alt="上升" src="http://localhost:99/siteserver/Pic/icon/up.gif" border="0" /></a></td>
          <td align="center" style="width: 30px;"><a onClick="taxis(this, false);return false;" href="javascript:;"><img alt="下降" src="http://localhost:99/siteserver/Pic/icon/down.gif" border="0" /></a></td>
        </tr>
      </itemtemplate>
    </asp:Repeater>
    <tr id="specButtonRow">
      <td align="center" colspan="8"><asp:Button class="button" id="Ok" text="保 存" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </TABLE>
</form>
</body>
</html>
