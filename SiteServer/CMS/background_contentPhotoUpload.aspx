<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentPhotoUpload" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="fancybox" runat="server" />
<script type="text/javascript" src="../../sitefiles/bairong/scripts/jquery/ajaxupload.js"></script>
<script type="text/javascript" src="../../sitefiles/bairong/scripts/swfUpload/swfupload.js"></script>
<script type="text/javascript" src="../../sitefiles/bairong/scripts/swfUpload/handlers.js"></script>
<script type="text/javascript">
function uploadSuccess(file, response) {
	try {
		if (response) {
			 response = eval("(" + response + ")");
			 
			 if (response.success == 'true') {
				 add_form();
				var $count = $('#Photo_Count');
				var index = parseInt($count.val());
				 $("#imgPhoto_" + index).attr('src', response.url);
				 $("#PreviewUrl_" + index).val(response.previewUrl);
				 $("#ImageUrl_" + index).val(response.imageUrl);
			 } else {
				 alert(response.message);
			 }
		 }
	} catch (ex) {
		this.debug(ex);
	}
}

var swfu;
$(document).ready(function(){
	swfu = new SWFUpload({
		// Backend Settings
		upload_url: "../../sitefiles/inner/ajaxUpload.aspx?PublishmentSystemID=<%=PublishmentSystemID%>&isContentPhotoSwfUpload=True",

		// File Upload Settings
		file_size_limit : "2 MB",
		file_types : "*.jpg;*.jpeg;*.gif;*.png",
		file_types_description : "Images",
		file_upload_limit : 0,    // Zero means unlimited

		// Event Handler Settings - these functions as defined in Handlers.js
		//  The handlers are not part of SWFUpload but are part of my website and control how
		//  my website reacts to the SWFUpload events.
		swfupload_preload_handler : preLoad,
		swfupload_load_failed_handler : loadFailed,
		file_queue_error_handler : fileQueueError,
		file_dialog_complete_handler : fileDialogComplete,
		upload_error_handler : uploadError,
		upload_success_handler : uploadSuccess,
		upload_complete_handler : uploadComplete,

		// Button settings
		button_image_url : "../../sitefiles/bairong/scripts/swfUpload/button.png",
		button_placeholder_id : "swfUploadPlaceholder",
		button_width: 114,
		button_height: 22,
		button_text : '» 添加多幅图片',
		button_text_top_padding: 1,
		button_text_left_padding: 5,

		// Flash Settings
		flash_url : "../../sitefiles/bairong/scripts/swfUpload/swfupload.swf",	// Relative to this file
		flash9_url : "../../sitefiles/bairong/scripts/swfUpload/swfupload_FP9.swf",	// Relative to this file

		// Debug Settings
		debug: false
	});
});
</script>
<style>
.upload{
	background-image:url(../../sitefiles/bairong/scripts/swfUpload/button.png); width:114px; height:22px; text-align:left; padding:2px 5px; cursor:default;
}
</style>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column" id="contents">
    <div class="columntitle">上传图片 </div>
    <TABLE border=0 cellSpacing=5 cellPadding=5 width="95%">
      <TBODY>
        <TR>
          <TD colspan="2" align="left">

            <input id="Photo_Count" type="hidden" name="Photo_Count" value="0" /></TD>
        </TR>
        <tr>
          <td align="right">
          <table width="240" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><span class="upload" onClick="add_form();">» 添加单幅图片</span></td>
    <td><span id="swfUploadPlaceholder"></span></td>
  </tr>
</table>

          </td>
          <td align="right">&nbsp;</td>
        </tr>
        <tr>
          <td align="center" width="700"><asp:Button class="button" id="Submit" OnClick="Submit_OnClick" Text="保 存" runat="server" />
            &nbsp;&nbsp;
            <asp:Button class="button" id="Return" CausesValidation="false" OnClick="Return_OnClick" Text="返 回" runat="server" /></td>
          <td align="right">&nbsp;</td>
        </tr>
      </TBODY>
    </TABLE>
  </DIV>
</form>

<div id="Photo_0" style="display:none">
<TABLE cellSpacing="3" style="border-bottom:#c5daf0 1px dashed" cellpadding="3">
    <TR>
      <TD align="left" valign="middle"><IMG id="imgPhoto_0" style="border: #ccc 1px solid; padding:1px;" src="../../SiteFiles/bairong/Icons/preview.gif" <%=GetPreviewImageSize() %> />
        <div><A id="uploadFile_0" href="javascript:void(0);">» 上传</A></div>
        <span id="img_upload_txt_0" style="clear:both; font-size:12px; color:#FF3737;"></span>
        <input type="hidden" id="ID_0" name="ID_0" value="" />
        <input type="hidden" id="PreviewUrl_0" name="PreviewUrl_0" value="" />
        <input type="hidden" id="ImageUrl_0" name="ImageUrl_0" value="" />
        </TD>
    <TD valign="top"><TABLE cellPadding=5>
            <TR>
              <TD>标题:</TD>
              <TD><input id="Title_0" name="Title_0" type="text" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" style="WIDTH: 350px" /></TD>
            </TR>
            <TR>
              <TD>图片介绍:</TD>
              <TD><textarea id="Description_0" name="Description_0" rows="7" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" style="WIDTH: 350px"></textarea></TD>
            </TR>
        </TABLE></TD>
        <TD valign="bottom"><a href="javascript:void(0);" onClick="remove_form('#Photo_0');">删除图片</a></TD>
    </TR>
</TABLE>
</div>

<script type="text/javascript">
var ajaxUploadUrl = '../../SiteFiles/Inner/ajaxUpload.aspx?publishmentSystemID=<%=PublishmentSystemID%>&isContentPhoto=True';

function add_form(id, url, previewUrl, imageUrl, title, description){
	var $count = $('#Photo_Count');
	var count = parseInt($count.val());
	count = count + 1;
	var $el = $("<div id='Photo_" + count + "'>" + $('#Photo_0').html().replace(/_0/g, '_' + count) + "</div>");
	$el.insertBefore($count);	
	$('#Photo_Count').val(count);
	add_ajaxUpload(count);
	
	if (id && id > 0){
		$('#ID_' + count).val(id);
		$('#imgPhoto_' + count).attr("src", url);
		$('#PreviewUrl_' + count).val(previewUrl);
		$('#ImageUrl_' + count).val(imageUrl);
		$('#Title_' + count).val(title);
		$('#Description_' + count).val(description);
	}
}

function remove_form(divID){
	$(divID).remove();
}

function add_ajaxUpload(index){
	new AjaxUpload('uploadFile_' + index, {
	 action: ajaxUploadUrl,
	 name: "ImageUrl",
	 data: {},
	 onSubmit: function(file, ext) {
		 var reg = /^(jpg|jpeg|png|gif)$/i;
		 if (ext && reg.test(ext)) {
			 $('#img_upload_txt_' + index).text('上传中... ');
		 } else {
			 $('#img_upload_txt_' + index).text('只允许上传JPG,PNG,GIF图片');
			 return false;
		 }
	 },
	 onComplete: function(file, response) {
		$('#img_upload_txt_' + index).text(' ');
		 if (response) {
			 response = eval("(" + response + ")");
			 if (response.success == 'true') {
				 $("#imgPhoto_" + index).attr('src', response.url);
				 $("#PreviewUrl_" + index).val(response.previewUrl);
				 $("#ImageUrl_" + index).val(response.imageUrl);
			 } else {
				 $('#img_upload_txt_' + index).text(response.message);
			 }
		 }
	 }
	});	
}

<asp:Literal ID="ltlScript" runat="server"></asp:Literal>

</script>
</body>
</html>