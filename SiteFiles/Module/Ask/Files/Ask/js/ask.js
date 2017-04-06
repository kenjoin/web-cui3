function loadScript(url, callback){
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

function reloadPage(){
	window.location.reload();
}

function dialogLogin(){
	showDialog('dialog/login.aspx', 350, 450, '用户登录');
}