<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Dialog.CatalogSelect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="background:white">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>选择分类</title>
 
<link href="../css/ask_content.css" rel="stylesheet" type="text/css" />
<style type="text/css"> 
.qnbox_l5 {width:500px;}
.box_con {padding:15px;}
body {background:#fff;}
</style>
 
<body>
 
<div>

<div class="box_con ln20">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="5" class="c8b">如果您的问题无法归入任何分类，您可以只选一级分类。</td>
  </tr>
  <tr>
    <td height="10" colspan="5"></td>
  </tr>
  <tr>
    <td width="130">
	<select name="level1" id="level1" size="25" style="width:190px;height:360px;" onchange="getQuestionType('2',this.value)"></select>
	</td>
    <td align="center" width="35"><img src="../images/icon_arrow3.gif" width="29" height="23" /></td>
    <td width="130">
	<select name="level2" id="level2" size="25" style="width:190px;height:360px;" onchange="getQuestionType('3',this.value)"></select>
	</td>
 
    <td align="center" width="35"><img src="../images/icon_arrow3.gif" width="29" height="23" /></td>
    <td width="130">
	  <select name="level3" id="level3" size="25" style="width:190px;height:360px;"></select>
	</td>
 
  </tr>
  <tr>
    <td height="10" colspan="5"></td>
  </tr>
  <tr>
    <td align="center" colspan="5"><input name="" type="button" class="btn_class" value="提交分类" onClick="confirmAction();" /> <input name="" type="button" class="btn_class" value="关 闭" onClick="parent.hideDialog();" /></td>
  </tr>
</table>
</div>
</div>
</body>
</html>
<script> 
function getQuestionType(level,parentID){
	document.getElementById("level"+level).options.length = 0;
	var objscr=document.body.insertBefore(document.createElement('script'),document.body.firstChild);
	objscr.src="../js/getCatalog.aspx?level="+level+"&parentID="+parentID;
}

getQuestionType('1','0');
 
function confirmAction(){ 
	var catalogNames = '';
	var catalogIDs = '';
	
	var level1 = document.getElementById('level1');
	var level2 = document.getElementById('level2');
	var level3 = document.getElementById('level3');
	
	catalogIDs = level1.value;
	catalogNames = getOptionText(level1, level1.value);
	
	if(level2.value != '') {
		catalogIDs += ',' + level2.value;
		catalogNames += ' -> ' + getOptionText(level2, level2.value);
	} 
	
	if(level3.value != '') {
		catalogIDs += ',' + level3.value;
		catalogNames += ' -> ' + getOptionText(level3, level3.value);
	}
	
	if(catalogIDs == '') {
		alert('请选择问题分类');
		return;
	}
	window.parent.getQuestionType(catalogNames, catalogIDs);
	parent.hideDialog();
}
 
function getOptionText(tag, value) {
	for(var i = 0; i < tag.options.length; i++) {
		if(tag.options[i].value == value) {
			return tag.options[i].text;
		}
	}
	return '';
}
</script>
