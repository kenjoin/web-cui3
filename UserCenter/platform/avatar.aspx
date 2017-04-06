<%@ Page Language="C#" Inherits="UserCenter.System.Platform.Avatar" enableViewState="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.upload.js"></script>
<script type="text/javascript" src="../js/swfUpload/swfupload.js"></script>
<script type="text/javascript" src="../js/swfUpload/handlers.js"></script>
<script type="text/javascript" language="javascript">
function uploadSuccess(file, response) {
	if (response) {
	 response = eval("(" + response + ")");
	 
	 if (response.success == 'true') {
		addToList(response.id, response.fileName, response.tips, response.description, response.price);
	 } else {
		 $('#img_upload_txt').text(response.message);
	 }
	}
}

var timeoutID;

$(document).ready(function(){	
	new AjaxUpload('uploadFile', {
	 action: "<%=GetUploadPageUrl()%>",
	 name: "Filedata",
	 data: {},
	 onSubmit: function(file, ext) {
		 var reg = /^(gif|jpg|jpeg|png)$/i;
		 if (ext && reg.test(ext)) {
			 $('#img_upload_txt').text('上传中... ');
			 timeoutID = window.setTimeout(function () {
				 location.reload();
			 }, 4000);
		 } else {
			 $('#img_upload_txt').text('系统不允许上传指定的格式');
			 return false;
		 }
	 },
	 onComplete: function(file, response) {
		$('#img_upload_txt').text(' ');
		 if (response) {
			 response = eval("(" + response + ")");
			 if (response.success == 'true') {
				 $('#avatarLarge').attr('src', response.avatarLarge);
				 $('#avatarMiddle').attr('src', response.avatarMiddle);
				 $('#avatarSmall').attr('src', response.avatarSmall);
				 window.clearTimeout(timeoutID);
			 } else {
				 $('#img_upload_txt').text(response.message);
			 }
		 }
	 }
	});
});
</script>
</head>
<body>
<div class="main-wrap">
  <div class="path">
    <p>当前位置：个人信息<span>&gt;</span>更换头像</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear"> <a href="attributes.aspx"><span>修改资料</span></a> <a class="current" href="avatar.aspx"><span> 更换头像</span></a> <a href="password.aspx"><span> 修改密码</span></a> </h5>
    </div>
    <div class="tab-con-s1">
      <div class="set-area">
        <bairong:Message runat="server"></bairong:Message>
        <div class="form web-info-form">
          <form id="avatarForm" runat="server">
            <h3 class="title">上传用户头像</h3>
            <div class="form-row">
              <label for="upload_file" class="form-field">选择图片</label>
              <div class="form-cont">
                
                <table width="260" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><a id="uploadFile" href="javascript:;" class="btn-general highlight"><span>选 择&nbsp;</span></a></td>
                      <td><span id="swfUploadPlaceholder"></span></td>
                    </tr>
                  </table>
                  <span id="img_upload_txt" style="clear:both; font-size:12px; color:#FF3737;"></span>
                
                <p class="form-tips">请选择您喜欢的图片作为头像图片(支持jpg,gif,png格式)</p>
              </div>
            </div>
            <div class="form-row logo_preview">
              <label for="upload_file" class="form-field">效果预览</label>
              <div class="form-cont">
                <table border="0" style="width:400px;" cellspacing="2" cellpadding="2">
                  <tr>
                    <td><img id="avatarLarge" src="<%=GetUserAvatarLargeUrl()%>" /></td>
                    <td><img id="avatarMiddle" src="<%=GetUserAvatarMiddleUrl()%>" /></td>
                    <td><img id="avatarSmall" src="<%=GetUserAvatarSmallUrl()%>" /></td>
                  </tr>
                </table>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>