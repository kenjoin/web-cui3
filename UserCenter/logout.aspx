<%@ Page Language="C#" Inherits="UserCenter.System.Pages.LogoutPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户退出</title>
<script type='text/javascript' src='js/jquery.min.js'></script>
<link href="js/showLoading/css/showLoading.css" rel="stylesheet" media="screen" /> 
<script type="text/javascript" src="js/showLoading/js/jquery.showLoading.js"></script>
<script language="javascript" type="text/javascript">
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

$(function() {
	if (window.top != self){
		window.top.location = self.location;
	}
	
	$('#logout').showLoading();
	var url = 'ajax/form.aspx?action=logout';
	window.returnUrl = '<%=GetReturnUrl()%>';
	$.post(url, null, function(json){
		if ('string' == typeof json) {
			json = eval('(' + json + ')');
		}
		if (json.isSSO == 'true'){
			var urlList = json.ssoUrls.split(',');
			if (urlList.length > 0){
				window.urlCount = urlList.length;
				for( var i = 0; i < urlList.length; i ++ ){
					load_script(urlList[i],function(){
						if (!window.urlLoad) window.urlLoad = 0;
						if (++window.urlLoad == window.urlCount){
							window.location.href = window.returnUrl;
						}
					});
				}
			}else{
				window.location.href = window.returnUrl;
			}
		}
		else{
			window.location.href = window.returnUrl;
		}
	})
});
</script>
</head>
<body>
<br />
<p id="logout">&nbsp;</p>
</body>
</html>
