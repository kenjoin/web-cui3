<%@ Page Language="C#" Inherits="UserCenter.System.Pages.LoginPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
<link href="css/admin/admin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
html{ background:#F2F5F8;}
body{ background:#F2F5F8;}
</style>
<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/admin/admin.js'></script>
<link href="js/showLoading/css/showLoading.css" rel="stylesheet" media="screen" /> 
<script type="text/javascript" src="js/showLoading/js/jquery.showLoading.js"></script>
<script language="javascript" type="text/javascript">
function refreshCc() {
	var ccImg = document.getElementById("checkCodeImg");
	if (ccImg) {
		ccImg.src= ccImg.src + '&' +Math.random();
	}
}

function load_script(url, callback){
	var head = document.getElementsByTagName('head')[0];
	var script = document.createElement('script');
	script.type = 'text/javascript';
	script.src = url;
	script.onload = script.onreadystatechange = function(){
		if((!this.readyState || this.readyState === "loaded" || this.readyState === "complete")){
			callback && callback();
			// Handle memory leak in IE
			script.onload = script.onreadystatechange = null;
			if ( head && script.parentNode ) {
				head.removeChild( script );
			}
		}
	};
	// Use insertBefore instead of appendChild  to circumvent an IE6 bug.
	head.insertBefore( script, head.firstChild );
}

function load_iframe(url, callback){
	var iframe = document.createElement("iframe");
	iframe.src = url;
	iframe.width = 0;
	iframe.height = 0;
	if (iframe.attachEvent){
		iframe.attachEvent("onload", function(){
			callback && callback();
		});
	} else {
		iframe.onload = function(){
			callback && callback();
		};
	}
	document.body.appendChild(iframe);
}

$(function() {
	$('#username').focus();
	if (window.top != self){
		window.top.location = self.location;
	}
});

function ajax_submit() {
	$('#login-cont').showLoading();
	var url = 'ajax/form.aspx?action=login';
	var data = {
			'username': $('#username').val(),
			'password': $('#password').val(),
			'verifyCode': $('#verifyCode').val()
		};
	$.post(url, data, function(json){
		if ('string' == typeof json) {
			json = eval('(' + json + ')');
		}
		if (json.state == '200') {
			if (json.isSSO == 'true'){
				var urlList = json.ssoUrls.split(',');
				if (urlList.length > 0){
					window.urlCount = urlList.length;
					for( var i = 0; i < urlList.length; i ++ ){
						load_script(urlList[i],function(){
							if (!window.urlLoad) window.urlLoad = 0;
							if (++window.urlLoad == window.urlCount){
								window.location.href = 'index.aspx';
							}
						});
					}
				}else{
					window.location.href = 'index.aspx';
				}
			}
			else{
				window.location.href = 'index.aspx';
			}
		} else {
			$('#login-cont').hideLoading()
			if (json.state == '402') {
				$('#verify_code_msg').html(json.errorMessage).addClass("tips-error").show();
				$('#username_msg').hide();
			} else {
				$('#username_msg').html(json.errorMessage).addClass("tips-error").show();
				$('#verify_code_msg').hide();
			}
		}
	})
}
</script>
</head>
<body>
<asp:PlaceHolder id="phThirdLogin" runat="server"></asp:PlaceHolder><asp:PlaceHolder id="phWeibo" runat="server"></asp:PlaceHolder><asp:PlaceHolder id="phQQ" runat="server"></asp:PlaceHolder>
<div id="login-wrap">
	<div class="login-main">
    	<div class="login-tit">
        	<div class="admin-logo"></div>
            <div class="tit"><a href="forget.aspx">找回密码</a>&nbsp;&nbsp;&nbsp;<a href="register.aspx">注册新用户</a></div>
        </div>
        <div id="login-cont" class="login-cont">
            <form id="loginFrm" action="" method="post" onsubmit="ajax_submit();return false;">
            	<div class="account1">
                	<label>帐号：</label>
                    <input class="input-txt w180" id="username" name="username" />
                    <span id="username_msg"></span>
                </div>
                <div class="account1">
                	<label for="">密码：</label>
                    <input class="input-txt w180" id="password" name="password" type="password" />
                    <span id="password_msg"></span>
                </div>
				<asp:PlaceHolder ID="phValidateCode" runat="server">
                <div class="account2">
                	<label for="">验证码：</label>
                    <input class="input-txt w180" id="verifyCode" name="verifyCode" type="text" autocomplete="off" />
                    <span id="verify_code_msg"></span>
                </div>
                <div class="account3">
               	  <img id="checkCodeImg" src="<%=GetImageSrc()%>" />
                    <a href="javascript:refreshCc();">看不清楚，换一张</a>
                </div>
			  </asp:PlaceHolder>
                <input class="admin-btn" onfocus="this.blur()" name="" type="submit" value="登 录" />
                
            </form>
        </div>
    </div>
</div>
</body>
</html>
