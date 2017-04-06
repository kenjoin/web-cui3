<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundLeftSiteSelect" Trace="False"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<style type="text/css">
body { padding:0; margin:0; }
</style>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<script language="JavaScript" type="text/javascript">
//取得Tree的级别，1为第一级
function getTreeLevel(e) {
	var length = 0;
	if (e) {
		if (e.tagName == "TR") {
			length = parseInt(e.getAttribute("treeItemLevel"));
		}
	}
	return length;
}

function getTrElement(element) {
    if (isNull(element)) return;
    for (element = element.parentNode; ; ) {
        if (element != null && element.tagName == "TR") {
			break;
		} else {
    		element = element.parentNode;   
		}
	}
	return element;
}

function getImgClickableElementByTr(element){
	if (isNull(element) || element.tagName != "TR" ) return;
	var img = null;
	if (!isNull(element.all)){
		var imgCol = element.all.tags('IMG');
		if (!isNull(imgCol)){
			for (x=0;x<imgCol.length;x++){
				if (!isNull(imgCol.item(x).getAttribute("altSrc"))){
					img = imgCol.item(x);
					break;
				}
			}
		}
	}
	return img;
}

function toggleChildren(element, level) {
   var src = element.src;
   element.setAttribute("src", element.getAttribute("altSrc"));
    element.setAttribute("altSrc", src);
    var tr = getTrElement(element);
    for (var e = tr.nextSibling; !isNull(e) && tr.tagName == "TR"; e = e.nextSibling) {
       
        if (!e.tagName) continue;
        var currentLevel = getTreeLevel(e);
		if (currentLevel <= level) break;
		if (e.style.display == "") {
			e.style.display = "none";
			var img = getImgClickableElementByTr(e);
			if (!isNull(img)){
			    img.setAttribute("src", element.getAttribute("src"));
				img.setAttribute("altSrc", src);
			}
        } else {//展开
			if (currentLevel != level + 1) continue;
			e.style.display = "";
		}
	}
}

</script>
</head>
<body>
<div class="lefttab">
  <lan>请选择站点进行管理</lan>
</div>
<div class="columncontent" style="margin-left:0px; padding-left:0px;">
  <TABLE cellSpacing=0 cellPadding=0 align=center border=0 width="100%">
    <TBODY>
      <asp:Literal runat="server" ID="ltlAllSystem"></asp:Literal>
    </TBODY>
  </TABLE>
</div>
</body>
</html>
