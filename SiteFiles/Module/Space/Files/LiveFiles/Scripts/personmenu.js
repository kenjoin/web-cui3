function personmenu_process_img(img)
{
	Event.observe(img, "mouseover", icon_mouseover.bindAsEventListener(img));
	Event.observe(img, "mouseout", icon_mouseout.bindAsEventListener(img));
}

function panel_mouseover(e)
{
	_pm.hover_panel=true;
	clearTimeout(_pm.hide_timer);
}

function panel_mouseout(e)
{
	_pm.hover_panel=false;
	if(_pm.hover_icon)
	{
		return;
	}
	_pm.hide_timer=setTimeout(
		function()
		{
			personmenu_hide();
		},500);
}

function icon_mouseover()
{
	_pm.hover_icon=true;
	var icon = this;
	clearTimeout(_pm.hide_timer);
	_pm.show_timer=setTimeout(
		function()
		{
			if(icon!=_pm.icon)
			{
				personmenu_show(icon);
			}
		},100);
	
}

function icon_mouseout()
{
	_pm.hover_icon=false;
	if(_pm.hover_panel){return;}
	_pm.hide_timer=setTimeout(
	function()
	{
		personmenu_hide();
	},500);
}

var _pm;
function personmenu_init()
{
	_pm = {};
	_pm.icon = null;
	_pm.panel = $("person_panel");
	_pm.hover_icon = false;
	_pm.hover_panel = false;
	_pm.show_timer = null;
	_pm.hide_timer = null;
	
	Event.observe(_pm.panel, "mouseover", panel_mouseover.bindAsEventListener(_pm.panel));
	Event.observe(_pm.panel, "mouseout", panel_mouseout.bindAsEventListener(_pm.panel));
	
	/*var elementList = document.getElementsByClassName("personmenu-trigger");
	for(var i=0;i < elementList.length;i++)
	{
		personmenu_process_img(elementList[i]);
	}*/
}

function personmenu_show(img)
{
	clearTimeout(_pm.show_timer);
	clearTimeout(_pm.hide_timer);
	
	var x=_find_x(img);
	var y=_find_y(img);
	x-=_pi((48-img.width)/2);
	y-=_pi((48-img.height)/2);
	_pm.icon = img;
	_pm.panel.style.left=(x+48-6)+"px";
	_pm.panel.style.top=(y-5)+"px";
	$(person_panel_ul).innerHTML = "loading... <img src='" + BaiRong.IconsUrl + "/loading.gif' width='16' height='16' />";
	_pm.panel.style.display='';
	
	var url = Live.InnerPageUrl + "personMenu.aspx?PersonUserName=" + encodeURIComponent(img.PersonUserName) + "&PersonMenuType=" + img.PersonMenuType;

	if (!_isNull(img.Parameters)) url += "&Parameters=" + img.Parameters;
	var option = {
		method:'get',
		onSuccess:function(){

		},
		onFailure:function(){
			$(person_panel_ul).innerHTML = "网络繁忙，请稍后再试....";
		}
	};
	new Ajax.Updater ({success:'person_panel_ul'}, url, option);
	
};

function personmenu_hide()
{
	clearTimeout(_pm.show_timer);
	clearTimeout(_pm.hide_timer);
	
	_pm.hover_icon=false;
	_pm.hover_panel=false;
	_pm.icon = null;
	_pm.panel.style.display='none';
}

var _pi=function(str)
{
	return parseInt(str,10);
};

var _find_x=function(el,_191)
{
	if(_191)
	{
		if(el.style.left)
		{
			return _pi(el.style.left);
		}
		return el.offsetLeft;
	}
	var _192=0;
	if(el.offsetParent)
	{
		while(el.offsetParent)
		{
			_192+=el.offsetLeft;
			el=el.offsetParent;
		}
	}
	else
	{
		if(el.x)
		{
			_192+=el.x;
		}
	}
return _192;
};

var _find_y=function(el,_193)
{
	if(_193)
	{
		if(el.style.top)
		{
			return _pi(el.style.top);
		}
		return el.offsetTop;
	}
	var _194=0;
	if(el.offsetParent)
	{
		while(el.offsetParent)
		{
			_194+=el.offsetTop;
			el=el.offsetParent;
		}
	}
	else
	{
		if(el.y)
		{
			_194+=el.y;
		}
	}
	return _194;
};


//Dropdown

Dropdown = Class.create();
Dropdown.prototype = {
					   initialize:function(){
						   if($("dropdown").visible()){this.hide();}
						   $("dropdown-trigger").onclick=this.toggle.bind(this);
						   $("dropdown-closer").onclick=this.hide.bind(this);
						   this.mouseUpHander=this.mouseUp.bindAsEventListener(this);
						},
						show:function(){
							$("dropdown").style.top = _find_y($("dropdown-trigger")) + 14;
							$("dropdown").style.right = _find_x($("dropdown-trigger"),true) + 12;
							$("dropdown").show();
							this.showing=true;
							Event.observe(document.body, "mouseup", this.mouseUpHander);
							return false;
						},
						hide:function(){
							$("dropdown").hide();
							this.showing=false;
							Event.stopObserving(document.body,"mouseup",this.mouseUpHander);
							return false;
						},
						toggle:function(){
							if(this.showing){this.hide();}
							else{this.show();}
							return false;
						},
						mouseUp:function(e){
							if(this.showing){
								if(!Position.within($("dropdown-menu"),e.clientX,e.clientY)){this.hide();}
							}
						}
					};
					
function dropdown_init(){
	if($("dropdown-trigger") && ("dropdown")){myDropdown=new Dropdown();}
}