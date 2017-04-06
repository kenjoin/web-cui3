$(function(){
    var isLogined = false, //是否已登录
		isLoginDivOpen = false, //是否登录层已弹出
		$innovateDetail = $("#innovateDetail"),
        $detailPic = $("div[class='innovate-image']"),
        $detailContent = $("div[class='innovate-content']"),
		qyapiUrl = 'http://www.nettac.cn',
        UA = navigator.userAgent.toLowerCase(),
    	uPlaceholder = "请输入用户名",
        pPlaceholder = "请输入密码",
        isOpenQQBind = false,
        qyapiSessionid,
        html;
        
    //cookie只保留7天
    var ms = Date.parse( new Date() ) + 1000*60*60*24*7,
        expires = new Date( ms );        
        
    html = '<div class="qq-dialog-conts" style="display:none;">' + 
           '  <div class="qq-opt"></div>' + 
           '  <div id="choose" class="qq-dc-cms-con">' + 
           '    <div class="qq-dc-main">' + 
           '        <div class="qq-dialog-title">亲爱的QQ用户</div>' + 
           '        <i class="qq-close-btn" title="关闭"></i>' + 
           '        <ul class="qq-dcc-con">' + 
           '            <li>' + 
           '              <span>如果之前您未注册过群英账号，请</span>' + 
           '            </li>' + 
           '            <li>' + 
           '              <span><img id="btnReg" width="250" height="42" src="/images/zcbd_03.jpg" alt="立即注册群英账号" /></span>' + 
           '            </li>' + 
           '            <li>' + 
           '              <span>如果您已注册过群英账号，请</span>' + 
           '            </li>' + 
           '            <li>' + 
           '              <span><img id="btnBind" width="250" height="42" src="/images/zcbd_04.jpg" alt="绑定群英账号" /></span>' + 
           '            </li>' + 
           '        </ul>' + 
           '    </div>' + 
           '  </div>' + 
           '  <div id="bind" class="qq-dc-cms-con">' + 
           '    <div class="qq-dc-main" style="position:relative;">' + 
           '        <div class="qq-dialog-title">绑定已有群英账号</div>' + 
           '        <i class="qq-close-btn" title="关闭"></i>' + 
           '        <ul class="qq-dcc-con">' + 
           '            <li>' + 
           '              <div style="width:100%; text-align:center;"><input class="qq-dc-ipt" type="text" id="reg_cc" value="" /></div>' + 
           '            </li>' + 
           '            <li>' + 
           '              <div style="width:100%; text-align:center;"><input class="qq-dc-ipt" type="password" id="reg_psw" value="" /></div>' + 
           '            </li>' + 
           '            <li>' + 
           '              <div style="width:100%; text-align:center; position:relative;"><input class="qq-dc-ipt" type="text" id="reg_code" value="" /><img class="yzm" src="http://www.nettac.cn/index.php/Home/Index/verify/" alt="点击重新获取验证码" id="reg_code_img" style="position:absolute; top:1px; right:43px; width:100px; height:44px; border-left: 1px solid #c6c6c6;"></div>' + 
           '            </li>' +            
           '            <li>' + 
           '              <div><input class="qq-dc-bind" type="button" id="btnBinded" /><input class="qq-dc-back" type="button" id="btnBack" /></div>' + 
           '            </li>' + 
           '        </ul>' + 
           '    </div>' + 
           '  </div>' + 
           '</div>';
           
    var href = window.location.href,
        referrer = document.referrer;
                
    if ( window.navigator.cookieEnabled )
    {
        var cookieArr = [],
            hasHref = false;
        if( -1!=href.indexOf('?f=') ){
            document.cookie = "href="+ encodeURI(href) +"; expires=" + expires +"; path=/; ";
            document.cookie = "referrer="+ encodeURI(referrer) +"; expires=" + expires +"; path=/; ";
        }else{
            //如果是本站内跳转不记录 referrer
            if( referrer && !/^http:\/\/.+?\.qy\.com\.cn.+?$/g.test(referrer) ){
                document.cookie = "referrer="+ encodeURI(referrer) +"; expires=" + expires +"; path=/; ";
                document.cookie = "href=; expires="+ new Date( 0).toUTCString() +"; path=/; ";
            }
        }
    }
        
	//创建隐藏iframe
	hiddenIframe = document.createElement('iframe');
	hiddenIframe.width = "0";
	hiddenIframe.height = "0";
	hiddenIframe.style.display = "none";
	document.body.appendChild(hiddenIframe);	
    
	/* 交互事件 
    $("#navbox").mouseover(function(){
        if( isLogined ) return;
        $("#navbox").addClass("current");
		isLoginDivOpen = true;
    });

    $("#navbox").mouseout(function(){
		if( isLogined ) return;
		$("#navbox").removeClass("current");
		isLoginDivOpen = false;	
	}); 
    */
    
    window.setLoginIn = function(){
        var login_in = href;
        //记录登入网址
        document.cookie = "login_in="+ encodeURI(login_in) +"; expires=" + expires +"; path=/; ";
        window.location.href = "http://www.nettac.cn/login.html";        
    }
    
    $("#login_text").click(function(){
        window.setLoginIn();
    });
    
    //QQ登录事件
    $("#btnReg").live('click',function(){
        window.location.href = "http://www.nettac.cn/reg.html";
    });

    $("#btnBind").live('click',function(){
        $("#choose").hide();
        $("#reg").hide();
        $("#bind").show();
        isOpenQQBind = true;
    }); 
    
    //绑定已有账号
    $("#btnBinded").live('click',function(){
        var reg_cc = $.trim( $('#reg_cc').val() ),
            reg_psw = $.trim( $('#reg_psw').val() ),
            reg_code = $.trim( $('#reg_code').val() );
            
        if( ''==reg_cc ){
            alert("请输入群英CC账号");
            return;
        }
        if( ''==reg_cc ){
            alert("请输入密码");
            return;
        }
        if( ''==reg_code ){
            alert("请输入验证码");
            return;
        }
        
        var url = "http://www.nettac.cn/qqconnect/oauth/qq_bind.php";
        
        $.ajax({
            type: "POST",
            dataType: "jsonp",
            jsonp: "callback",
            url: url,
            data: "qyuserid=" + reg_cc + "&password=" + reg_psw + "&code=" + reg_code,
            success: function(data)
            {
                if( 1==data )
                {
                    alert( "绑定群英账号成功！" );
                    $(".qq-dialog-conts").hide(300);
                    window.checkLogin();
                }else if( -1==data ){
                    alert( '对不起，没有找到同步客户数据，请联系我司客服人员！' );
                }else if( -2==data ){
                    alert( '密码不正确，请检查后重新输入！' );
                }else if( -3==data ){
                    resetCode();
                    alert( '验证码错误，请重新输入！' );
                }else{
                    alert( "对不起，绑定群英账号失败，请稍候再试！" );
                }
            }
        }); 
    });
    
    $("#btnBack").live('click',function(){
        $("#choose").show();
        $("#reg").hide();
        $("#bind").hide();
        isOpenQQBind = false;
    });    
   
    /*
    $('#username').blur(function(){
        if(this.value == '') 
        {
            this.value = uPlaceholder;
        }
    });

    $('#username').focus(function(){
        if(this.value == uPlaceholder) 
        {
            this.value = '';
        }
    }); 
    
    $('#btnSumbit').click(function(){
        sumbitFunc();
    });
    */

    $('#activity_logout').click(function(e){
        e.preventDefault();
        
        var url = qyapiUrl + "/login.php?action=logout&callback=?";
        
        var offset = $("#login_text").offset();
            
        $.ajax({
            type: "POST",
            url: url,
            dataType: "jsonp",
            success: function(data)
            {
                if( 'status' in data )
                {
                    if( data.status )
                    {
						$('html').after(data.data );
                        alert( "退出登录成功！" );
                        $('#login_success').css({
                            left:'-9999px'
                        });
						syncLogout();
                        $("#activity_user").attr('href','')
						isLogined = false;
                    }else{
                        alert( '退出失败，请稍候再试！' );        
                    }
                }else{
                    alert('退出失败，请稍候再试！');
                }
            }
        });     
    });
    
    /*
	//监控回车事件
	function SubmitOrHidden(evt){		
		evt = window.event || evt;
		if(evt.keyCode==13){
            //如果是绑定QQ
            if( isOpenQQBind )
            {
                $("#btnBinded").click();
                return;
            }
            
            if( !isLoginDivOpen ) return;

			//如果用户名或密码为空不执行登录操作
			var username = $("#username").val(),
				password = $("#password").val();
			
			if( ''==$.trim(username) && ''==$.trim(password) )
				return;

			if( ''==$.trim(username) && ''!=$.trim(password) )
				return;

			if( ''!=$.trim(username) && ''==$.trim(password) )
			{
				setTimeout(function(){
					$("#password").focus();
				},10);
				return;
			}
			
			sumbitFunc();
		}else{
			 
		}
	}
    */
	
 	//判断是否已登录
	window.checkLogin = function( backLoginIn )
	{
		var url = qyapiUrl + "/login.php?action=checkLogin&callback=?";
			
		$.ajax({
			type: "POST",
			url: url,
			dataType: "jsonp",
			success: function(json)
			{
				if( json.status==1 )
				{
					var username = json.data.username,
						tokenkey = json.data.tokenkey;
					
					syncLogin(username,tokenkey,backLoginIn);

                    if(-1!=href.indexOf("/login.html")){
                        window.location.href = "/";
                    }
				}
                var session_id = json.data.session_id;
                qyapiSessionid = session_id;                
			}
		});		
	}
	
	function syncLogin( username,tokenkey,backLoginIn )
	{
		var cookies = document.cookie ? document.cookie.split('; ') : [];
		for (var i = 0, l = cookies.length; i < l; i++) {
			var parts = cookies[i].split('=');
			var name = parts.shift();
            if( 'login_username'!=name ) continue;         
            var login_username = parts.join('=');
            if( ''!=login_username && username!=login_username )
            {
                document.cookie = "order=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
                if( -1!=href.indexOf("/order.html") )
                {
                    window.location.reload();
                    return;
                }
            }
		}   

		var src = 'http://www.nettac.cn/idc2/idc.php?action=qylogin&name='+ username +'&tokenkey='+ tokenkey;
		hiddenIframe.setAttribute('src',src);
		
		var width = $('#login_success').width();
		$('#login_success').css({
			left: (-width + 70) + 'px',
			top: '0px'
		});
		$('#user_info_name').html( username );
        $('#activity_user').attr('href','http://www.nettac.cn/login.php?tokenkey=' + tokenkey);
		isLogined = true;
        
        if( backLoginIn ){
            if( -1!=backLoginIn.indexOf("login.html") ){
                backLoginIn = "/";
            }
            window.location.href = backLoginIn;
        }
	}
	
	function syncLogout()
	{
		var src = 'http://www.nettac.cn/idc/idc.php?action=logout';
		hiddenIframe.setAttribute('src',src);
		
		$('#login_success').css({
			left:'-9999px'
		});
		isLogined = false;
	} 
	
    /*
	function sumbitFunc()
	{
        var username = $('#username').val(),
            password = $('#password').val();
            
        username = $.trim(username);
        password = $.trim(password);
        
        if( uPlaceholder==username || ''==username )
        {
            return showLoginMsg("请输入用户名！");
        }
        
        if( ''==$.trim(password) )
        {
            return showLoginMsg("请输入密码！");
        }  

        var url = qyapiUrl + "/login.php?action=login&callback=?",
            data = "name=" + username +"&password=" + password;
                
        var offset = $("#login_text").offset();
            
        $.ajax({
            type: "POST",
            url: url,
            dataType: "jsonp",
            data: data,
            success: function(data)
            {
                if( 'status' in data )
                {
                    if( data.status )
                    {
						var tokenkey = data.data.tokenkey;
						
						$("#navbox").removeClass("current");
						
                        var width = $('#login_success').width();
                        $('#login_success').css({
                            left: (-width + 70) + 'px',
                            top: '0px'
                        });
                        $('#user_info_name').html( username );
						
						syncLogin( username,tokenkey );
						
                        isLogined = true;
                    }else{
                        showLoginMsg( data.msg );
                        $('#username').val("");
                        $('#password').val("");
                    }
                }else{
                    showLoginMsg('登录失败，请稍候再试！');
                }
            }
        }); 		
	} 
    */

    function createPlaceholder(id,text,top,left){
        top = top || 0;
        left = left || 0;

        var obj = $('#' + id)[0];

        if( undefined!==obj.placeholder )
        {
            obj.placeholder = text;
            return;
        } 
        
        var parent = obj.parentNode,
            clickEvent = function(){
                $(div)[0].style.visibility = 'hidden';
                var target = this.nextSibling;
                if( target.nodeName=='#text' )
                {
                    target = target.nextSibling;
                }
                target.focus();            
            },
            blurEvent = function(){
                var value = $.trim(this.value);
                if( value=='' )
                {
                    $(div)[0].style.visibility = 'visible';
                }
            },
            focusEvent = function(){
                $(div)[0].style.visibility = 'hidden';
            };
        
        $(parent).css({position: 'relative'});
        
        var div = document.createElement('div');
        div.innerHTML = text;
        $(div).css({position: 'absolute', top: top, left: left, color: "#999",'font-size':'14px'});
        parent.insertBefore(div,obj);
        $(div).click(clickEvent);
        $(obj).blur(blurEvent);
        $(obj).focus(focusEvent);
    }   
    
    /*
    window.showLoginMsg = (function(){
        var div = document.createElement('div'),
            css = {height:'20px', lineHeight:'20px', color:'red', clear:'both', display:'none'},
            hide = function(){
                div.style.display = 'none';
            },
            sid;
        
        //找到显示错误信息的元素
        var $btnSumbit = $("#btnSumbit"),
            target = $btnSumbit[0].parentNode.previousSibling;
        if( '#text'==target.nodeName )
        {
            target = target.previousSibling;
        }
        $(div).css( css );
        target.insertBefore(div,null);
        
        return function(msg){
            if( sid ) clearTimeout(sid);
            div.innerHTML = msg;
            $(div).show(300);            
            sid = window.setTimeout(hide,8000);
        }
    })();
    */
	
	window.toQQLogin = function()
	{
        document.domain = 'nettac.cn';
        childWindow = window.open("http://qyapi.nettac.cn/qqconnect/oauth/qq_login.php", "TencentLogin", "width=800,height=600,menubar=0,scrollbars=1, resizable=1,status=1,titlebar=0,toolbar=0,location=1");        
	}
    
    var isFirst = false;
    window.openDiv = function()
    {
        if( !isFirst ){
            createPlaceholder('reg_cc','群英CC账号',18,45);
            createPlaceholder('reg_psw','群英CC密码',18,45);
            createPlaceholder('reg_code','验证码',18,45);
            isFirst = true;
        }
        resetCode();
        
        $(".qq-dialog-conts .qq-dc-cms-con").css({
            top: ($(window).scrollTop() + 150) + "px"
        });
        $(".qq-dialog-conts").css({
            height: ($("body").height()) + "px"
        });
        $(".qq-dialog-conts").show(300);
    } 
    




















    /* 右边工具栏 */
	var bIsIpad=UA.match(/ipad/i)=="ipad",
		bIsIphoneOs=UA.match(/iphone os/i)=="iphone os",
		bIsAndroid=UA.match(/android/i)=="android",
		bIsWM=UA.match(/windows mobile/i)=="windows mobile";
	if(!(bIsIpad||bIsIphoneOs||bIsAndroid||bIsWM)){
		var title = document.title,
        url = encodeURI(window.location.href),
        toolHtml = "";
        

/*
		toolHtml += '<div style="height: 479px;" class="ritght-nav-bar">';
		toolHtml += '  <div class="rnb-inner">';
		toolHtml += '    <div class="chi-parent ic1">';
		toolHtml += '	  <i class="ar1"></i>';
		toolHtml += '	  <span class="icons"></span>';
		toolHtml += '	  <div class="kf-chi">';
		toolHtml += '	    <span class="tits"><i></i>在线客服</span>';
		toolHtml += '	    <ul>';
		toolHtml += '		  <li>';
		toolHtml += '		    <div class="fir">';
		toolHtml += '		      <span class="icon"></span>';
		toolHtml += '			  <span class="txt">销前咨询</span>';
		toolHtml += '			</div>';
		toolHtml += '			<div class="chiqq">';
		toolHtml += '			  <i></i>';
		
		



			toolHtml += '<a id="gfqq_1" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:2355734803:4" alt="给我发消息" border="0"> 黄鹏波</a>';
			toolHtml += '<a id="gfqq_1" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:2355734803:4" alt="给我发消息" border="0"> 黄鹏波</a>';
			toolHtml += '<a id="gfqq_1" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:2355734803:4" alt="给我发消息" border="0"> 黄鹏波</a>';
			toolHtml += '<a id="gfqq_1" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:2355734803:4" alt="给我发消息" border="0"> 黄鹏波</a>';
			





		toolHtml += '			</div>';    
		toolHtml += '		  </li>'; 


		toolHtml += '		  <li>';
		toolHtml += '		    <div class="fir">';
		toolHtml += '		      <span class="icon"></span>';
		toolHtml += '			  <span class="txt">售后服务</span>';
		toolHtml += '			</div>';
		toolHtml += '			<div class="chiqq">';
		toolHtml += '			  <i></i>';
		toolHtml += '             <a id="gfqq_1" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:2355734803:4" alt="给我发消息" border="0"> 黄鹏波</a>';
		toolHtml += '             <a id="gfqq_2" href="http://wpa.qq.com/msgrd?v=3&amp;uin=302208503&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:302208503:4" alt="给我发消息" border="0"> 罗鹏辉</a>';
		toolHtml += '             <a id="gfqq_3" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355319196&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:2355319196:4" alt="给我发消息" border="0"> 符清华</a>';
		toolHtml += '             <a id="gfqq_4" href="http://wpa.qq.com/msgrd?v=3&amp;uin=295486393&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:295486393:4" alt="给我发消息" border="0"> 麦玉明</a>';
		toolHtml += '             <a id="gfqq_5" href="http://wpa.qq.com/msgrd?v=3&amp;uin=100998832&amp;site=qq&amp;menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=2:100998832:4" alt="给我发消息" border="0"> 周宇允</a>';
		toolHtml += '			</div>';
		toolHtml += '		  </li>';   
 

		toolHtml += '		</ul>';
		toolHtml += '	  </div>';
		toolHtml += '	</div>';
		toolHtml += '	<a id="tool_icp" class="chi-parent ic2" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes">';
		toolHtml += '	  <i class="ar2"></i>';
		toolHtml += '	  <span class="icons"></span>';
		toolHtml += '	  <span class="sm">备案</span>';
		toolHtml += '	</a>';

		

		toolHtml += '	<a id="tool_working" class="chi-parent ic4" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes">';
		toolHtml += '	  <i class="ar2"></i>';
		toolHtml += '	  <span class="icons"></span>';
		toolHtml += '	  <span class="sm">报障</span>';
		toolHtml += '	</a>';
		

		toolHtml += '	<a id="tool_complain" class="chi-parent ic5" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355734803&amp;site=qq&amp;menu=yes">';
		toolHtml += '	  <i class="ar2"></i>';
		toolHtml += '	  <span class="icons"></span>';
		toolHtml += '	  <span class="sm">投诉</span>';
		toolHtml += '	</a>';
		
		toolHtml += '	<a class="chi-parent ic6" href="javascript:;">';
		toolHtml += '	  <i class="ar2"></i>';
		toolHtml += '	  <span class="icons"></span>';
		toolHtml += '     <div class="sm">'
		toolHtml += '        <img width="148" height="148" src="/images/qy2weima.jpg">';
		toolHtml += '     </div>';
		toolHtml += '	</a>';
		toolHtml += '  </div>';
		toolHtml += '</div>';


*/
		$('body').append(toolHtml);
		
		$(".rnb-inner .chi-parent").hover(function() {
			$('.chiqq').hide('slow');
			var className = this.className,
				width = '100px',
				height = 'auto';
			if( 'chi-parent ic6'==className ){
				width = "148px";
				height = '148px';
				$(this).parent().find('.sm').css('top','-100px');
			}else{
				$(this).parent().find('.sm').css('top','0');
			}
			$(this).addClass("cur");
			$(this).find(".sm").stop().animate({
				width: width,
				height: height
			}); 
		},function() {
			/*
			if( "DIV"==this.nodeName ){
				return;
			}
			*/
			$(this).removeClass("cur");
			$(this).find(".sm").stop().animate({
				width: 0
			});
		});
		
		/*
		$(document).click(function(){
			$('.chiqq').hide('slow');
			$(".rnb-inner .chi-parent").removeClass("cur");
			$(".rnb-inner .chi-parent").find(".sm").stop().animate({
				width: 0
			});    
		});
		*/
		
		var curElem;
		$(".rnb-inner .kf-chi li").click(function() {
			if(curElem){
				$(curElem).removeClass("curs");
				$(curElem).find(".chiqq").stop().slideUp();            
			}
			$(this).addClass("curs");
			$(this).find(".chiqq").stop().slideDown();
			curElem = this;
		}/*,function() {
			$(this).removeClass("curs");
			$(this).find(".chiqq").stop().slideUp();
		}*/);

		$(".rnb-inner .kf-chi .tits i").click(function() {
			$(this).parents(".chi-parent").removeClass("cur");  
		});

		$(window).resize(function() {
			rit_bar();    
		});
		
		$("#tool_icp,#tool_working").click(function(){
			var id = this.id,
				activity_user = $("#activity_user").attr('href'),
				isLogin = false;
			 
			if( -1!=activity_user.indexOf('tokenkey') ){
				isLogin = true;
			}

			if( !isLogin ){
				window.location.href = "/login.html";
			}else{
				window.location.href = activity_user + "&from=" + id;
			}
		});
		
		$("#tool_complain").click(function(){
			window.location.href = "/complain.html";
		});
	}
    
    $("#carts").click(function(){
        window.location.href = "/order.html";
    });

    window.setOrderCount = function(){
        var cookies = document.cookie ? document.cookie.split('; ') : [],
            count = 0;
        for (var i = 0, l = cookies.length; i < l; i++) {
            var parts = cookies[i].split('='),
                name = parts.shift(),
                value = parts.join('=');
            
            if( 'order'==name ){
                var orderStr = decodeURIComponent(value),
                    orderArr = orderStr.split("////"),
                    length = orderArr.length;
                    
                if( orderStr && length ){
                    for( var i=0;i<length;i++ ){
                        var oArr = orderArr[i].split('|'),
                            number = oArr[7];
                        count += parseInt( number );
                    }
                }
                break;
            }
        }
        $("#order_count").html(count);
    }    
    
	/*
    try {
         if ($(window).width() >= 1440) {
            $(".rnb-inner .ic1").addClass("cur");
        }else {
            $(".rnb-inner .ic1").removeClass("cur");
        }    
    }catch (e){};
	*/
	
    setOrderCount();
    rit_bar();
    
	/*
	//初始化 
    $('#username').val( uPlaceholder );
    $('#password').attr( 'placeholder',pPlaceholder );
	window.checkLogin();
	window.document.onkeydown = SubmitOrHidden; 
    $(document.body).append( html );
    createPlaceholder('reg_cc','群英CC账号',18,45);
    createPlaceholder('reg_psw','群英CC密码',18,45);
    */
    
    function rit_bar() {
        try {
            $(".ritght-nav-bar").css({
                height: $(document).height() + "px"
            });    
        }
        catch (e) {}     
    }
    
    function rit_bar() {
        try {
            $(".ritght-nav-bar").css({
                height: $(window).height() + "px"
            });   
        }
        catch (e) {}   
    }

    //定位导航条
    function setNav(){
        var href = window.location.href;
        
        var rMatch = /http.+?qy\.com\.cn\/(.+?)\//ig.exec(href);
        if (rMatch && rMatch.length){
            var type = rMatch[1];
            
            if( "brand"==type ){
                type = "zy";
            }else if( "jg"==type ){
                type = "zy";
            }else if( "ddk"==type ){
                type = "zy";
            }
            var $obj = $("#nav_" + type);
            
            if ($obj.length){
                $obj.addClass('cur');
                return;
            }
        }
        $("#nav_index").addClass('cur');       
    }

    function resetCode() {
        var url = "http://qyapi.nettac.cn/index.php/Home/Index/verify/r/" + Math.random();
        $('#reg_code_img').attr('src', url);
        $('#reg_code').val('');
    }

    window.getScript = function(url){
        $.getScript(url);
    }
    
    $(document.body).append( html );
    setNav(); 
    $('#reg_code_img').click(resetCode);
    window.checkLogin();
});