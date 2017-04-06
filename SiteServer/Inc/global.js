//JavaScript Ver 1.3.2

String.prototype.trim=function(){return this.replace(/^\s+|\s+$/g,"");};
String.prototype.nl2br=function(){return this.split("\n").join("<br />\n");};
//JavaScript End

//DHTML Start
var writeDebug=function(){};

var _get = function(id)
{
	return document.getElementById(id);
};

var _goto = function(url)
{
	window.location.href = url;
};

var _decorate=function()
{
	var el=arguments[0];
	if(!el)
	{
		return;
	}
	arguments[0]=el;
	var _154="decorate_"+el.className;
	if(window[_154])
	{
		return window[_154](arguments);
	}
	writeDebug(_154+" is not a function");
};

function _isNull(obj){
	if (typeof(obj) == "undefined")
	  return true;
	  
	if (obj == undefined)
	  return true;
	  
	if (obj == null)
	  return true;
	 
	return false;
}

function __Help_OnClick(sHelpID)
{
	var oHelp = _get(sHelpID);
	if (oHelp != null)
	{
		if (oHelp.style.display == 'none')
			oHelp.style.display = '';
		else
			oHelp.style.display = 'none';

		return true;	//cancel postback
	}
	return false;	//failed so do postback
}

function ToggleVisible(targetID, image, linkImage, linkImageCollapsed)
{
	if (document.getElementById){
  		target = document.getElementById(targetID);
  		if (target.style.display == "none") {
  			target.style.display = "";
  		} else {
  			target.style.display = "none";
  		}
  		
  		if (linkImageCollapsed != "") {
  			if (target.style.display == "none") {
  				image.src = linkImageCollapsed;
  			} else {
  				image.src = linkImage;
  			}
  		}
  	}
}

//DHTML End

//Ajax Start

function highlight(div)
{
	if(div.hideTimer)
	{
		clearTimeout(div.hideTimer);
	}
	div.style.color="gray";
	div.style.backgroundColor="#ffffd3";
}

function unhighlight(div)
{
	if(div.hideTimer)
	{
		clearTimeout(div.hideTimer);
	}
	div.hideTimer=setTimeout("var el = document.getElementById(\""+div.id+"\"); if (el) unhighlight2(el)",500);
}

function unhighlight2(div)
{
	if(div.hideTimer)
	{
		clearTimeout(div.hideTimer);
	}
	div.style.color="";
	div.style.backgroundColor="";
}

function Ajax_GetXMLHttpRequest() {
	if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else {
		if (window.Ajax_XMLHttpRequestProgID) {
			return new ActiveXObject(window.Ajax_XMLHttpRequestProgID);
		} else {
			var progIDs = ["Msxml2.XMLHTTP.5.0", "Msxml2.XMLHTTP.4.0", "MSXML2.XMLHTTP.3.0", "MSXML2.XMLHTTP", "Microsoft.XMLHTTP"];
			for (var i = 0; i < progIDs.length; ++i) {
				var progID = progIDs[i];
				try {
					var x = new ActiveXObject(progID);
					window.Ajax_XMLHttpRequestProgID = progID;
					return x;
				} catch (e) {
				}
			}
		}
	}
	return null;
}

//return Ajax_CallBack('ASP.PhotoContent_aspx', null, 'AddTags', [contentID,tagsString], clientCallBack, false, false, false, false,'/ls/cc/photos/26.aspx?Ajax_CallBack=true');
function Ajax_CallBack(type, id, method, args, clientCallBack, debugRequestText, debugResponseText, debugErrors, includeControlValuesWithCallBack, url) {
	var x = Ajax_GetXMLHttpRequest();
	var result = null;
	if (!x) {
		result = { "value":null, "error": "NOXMLHTTP"};
		if (debugErrors) {
			alert("error: " + result.error);
		}
		if (clientCallBack) {
			clientCallBack(result);
		}
		return result;
	}

	x.open("POST", url, clientCallBack ? true : false);
	x.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
	if (clientCallBack) {
		x.onreadystatechange = function() {
			var result = null;
		
			if (x.readyState != 4) {
				return;
			}
			
			if (debugResponseText) {
				alert(x.responseText);
			}
			
			try
			{
				var result = eval("(" + x.responseText + ")");
				if (debugErrors && result.error) {
					alert("error: " + result.error);
				}
			}
			catch (err)
			{
				if (window.confirm('The following error occured while processing an AJAX request: ' + err.message + '\n\nWould you like to see the response?'))
				{
					var w = window.open();
					w.document.open('text/plain');
					w.document.write(x.responseText);
					w.document.close();
				}
				
				result = new Object();
				result.error = 'An AJAX error occured.  The response is invalid.';
			}
			
			clientCallBack(result);			
		}
	}
	var encodedData = "Ajax_CallBackType=" + type;
	if (id) {
		encodedData += "&Ajax_CallBackID=" + id.split("$").join(":");
	}
	encodedData += "&Ajax_CallBackMethod=" + method;
	if (args) {
		for (var index = 0;index < args.length; index++){
			encodedData += "&Ajax_CallBackArgument" + index + "=" + encodeURIComponent(args[index]);
		}
        //args.each(function(value, index){
        //    encodedData += "&Ajax_CallBackArgument" + index + "=" + encodeURIComponent(value);
        //});
	}
	if (includeControlValuesWithCallBack && document.forms.length > 0) {
		var form = document.forms[0];
		for (var i = 0; i < form.length; ++i) {
			var element = form.elements[i];
			if (element.name) {
				var elementValue = null;
				if (element.nodeName == "INPUT") {
					var inputType = element.getAttribute("TYPE").toUpperCase();
					if (inputType == "TEXT" || inputType == "PASSWORD" || inputType == "HIDDEN") {
						elementValue = element.value;
					} else if (inputType == "CHECKBOX" || inputType == "RADIO") {
						if (element.checked) {
							elementValue = element.value;
						}
					}
				} else if (element.nodeName == "SELECT") {
					elementValue = element.value;
				} else if (element.nodeName == "TEXTAREA") {
					elementValue = element.value;
				}
				if (elementValue) {
					encodedData += "&" + element.name + "=" + encodeURIComponent(elementValue);
				}
			}
		}
	}
	if (debugRequestText) {
		alert(encodedData);
	}
	x.send(encodedData);
	if (!clientCallBack) {
		if (debugResponseText) {
			alert(x.responseText);
		}
		result = eval("(" + x.responseText + ")");
		if (debugErrors && result.error) {
			alert("error: " + result.error);
		}
	}
	delete x;
	return result;
}

//Ajax End

//IFrame Start

function getDocHeight(doc) {
  var docHt = 0, sh, oh;
  if (doc.height) docHt = doc.height;
  else if (doc.body) {
    if (doc.body.scrollHeight) docHt = sh = doc.body.scrollHeight;
    if (doc.body.offsetHeight) docHt = oh = doc.body.offsetHeight;
    if (sh && oh) docHt = Math.max(sh, oh);
  }
  return docHt;
}

function setIframeHeight(iframeName) {
  var iframeWin = window.frames[iframeName];
  var iframeEl = document.getElementById? document.getElementById(iframeName): document.all? document.all[iframeName]: null;
  var loadingEl = document.getElementById? document.getElementById('loading_' + iframeName): document.all? document.all['loading_' + iframeName]: null;
  if ( iframeEl && iframeWin ) {
    iframeEl.style.height = "auto"; // helps resize (for some) if new doc shorter than previous  
    var docHt = getDocHeight(iframeWin.document);
    // need to add to height to be sure it will all show
    if (docHt) iframeEl.style.height = docHt + 1 + "px";
	if (loadingEl) loadingEl.style.display = 'none';
  }
}

function loadIframe(iframeName, url) {
  if ( window.frames[iframeName] ) {
    window.frames[iframeName].location = url;   
    return false;
  }
  else return true;
}

//IFrame End

//StringBuilder Start

function StringBuffer()
{
	this.clear();
	if(arguments.length>0)
	{
		arguments.join=this.buffer.join;
		this.buffer[this.buffer.length]=arguments.join("");
	}
}
StringBuffer.prototype={
	toString:function()
	{
		return this.buffer.join("");
	},join:function(_3)
	{
		if(_3==null)
		{
			_3="";
		}
		return this.buffer.join(_3);
	},append:function(){
		arguments.join=this.buffer.join;
		this.buffer[this.buffer.length]=arguments.join("");
		return this;
	},set:function(_4){
		this.buffer=[_4];
	},clear:function(){
		this.buffer=[];
	}
};
StringBuffer.concat=function()
{
	arguments.join=Array.prototype.join;
	return arguments.join("");
};
StringBuffer.append=StringBuffer.concat;

//StringBuilder End

//Flickr Start
var F={id:"F",is_windows:(navigator.appVersion.toLowerCase().indexOf("mac")==-1&&navigator.appVersion.toLowerCase().indexOf("nix")==-1&&navigator.appVersion.toLowerCase().indexOf("nux")==-1),changes_count:0,_ebA:[],_decoratedO:{}};
F.get_tags_from_input_str=function(str){str=str.trim();if(str==""){return [];}var _20=str.split("\"");var _21=[];for(var i=0;i<_20.length;i++){var bit=_20[i].trim();if(i%2==0){var _23=bit.split(" ");for(var k=0;k<_23.length;k++){if(_23[k]!=""){_21.push(_23[k]);}}}else{if(bit!=""){_21.push(bit);}}}return _21;};
F.array_copy=function(A){var c=[];for(var i=0;i<A.length;i++){c[i]=A[i];}return c;};
F.array_copy_except=function(A,_26){var c=[];for(var i=0;i<A.length;i++){if(_26==undefined||A[i]!=_26){c.push(A[i]);}}return c;};
F.array_index_of=function(A,_27){for(var i=0;i<A.length;i++){if(A[i]==_27){return i;}}return -1;};
F.get_dates_from_form=function(_28,_29){var _30;var _31;var _32;var _33=_ge(_28+"date_posted_exact");var _34=_ge(_28+"time_posted_exact");if(_33){var d0A=_33.value.split("/");_30=_convert_MYSQLDateTime_into_unix_time_stamp(d0A[2]+"-"+d0A[0]+"-"+d0A[1]+" "+_34.value);if(_29>0){_30=_30+_29;}}if(_ge(_28+"date_taken_exact_div").style.display=="none"){var _36=_ge(_28+"date_taken_approx_month");var _37=_ge(_28+"date_taken_approx_year");_31=_37.options[_37.selectedIndex].value;if(_36.options[_36.selectedIndex].value!=0){_32="4";_31+="-"+_36.options[_36.selectedIndex].value+"-01";}else{_32="6";_31+="-01-01";}_31+=" 00:00:00";}else{var _38=_ge(_28+"date_taken_exact");var _39=_ge(_28+"time_taken_exact");var _40=_38.value.split("/");_32="0";_31=_40[2]+"-"+_40[0]+"-"+_40[1]+" "+_39.value;if(_29>0){var _41=_convert_MYSQLDateTime_into_unix_time_stamp(_31);_41=_41+_29;_31=_convert_unix_time_stamp_into_MYSQLDateTime(_41);}}return {date_posted:_30,date_taken:_31,date_taken_granularity:_32};
};
F.remove_el=function(el,p,_43){if(_43){F.drag_unreg(el);}_ge_cache_remove(el);p=(p)?p:el.parentNode;p.removeChild(el);};
F.drag_unreg=function(el){if(el.fumb_target){el.fumb_target.unreg();}if(el.fumb_drag){el.fumb_drag.unreg();}if(el.set_photo_drag){el.set_photo_drag.unreg();}if(el.set_photo_target){el.set_photo_target.unreg();}if(el.set_div_drag){el.set_div_drag.unreg();}if(el.set_div_target){el.set_div_target.unreg();}if(el.dot_drag){el.dot_drag.unreg();}if(el.dot_target){el.dot_target.unreg();}if(el.pinwin_thumb_drag){el.pinwin_thumb_drag.unreg();}if(el.pinwin_thumb_target){el.pinwin_thumb_target.unreg();}if(el.batch_photo_drag){el.batch_photo_drag.unreg();}if(el.batch_photo_target){el.batch_photo_target.unreg();}if(el.group_photo_drag){el.group_photo_drag.unreg();}if(el.group_photo_target){el.group_photo_target.unreg();}for(var i=el.childNodes.length-1;i>=0;i--){var ch=el.childNodes[i];F.drag_unreg(ch);}};
F.decorate=function(el,obj){if(!obj){return;}if(!el){return;}if(!el.id){writeDebug("decorated els must have ids!");return;}if(typeof obj._decotype=="object"){F.decorate(el,obj._decotype);}for(p in obj){if(p=="_decotype"){continue;}el[p]=obj[p];}if(this._decoratedO[el.id]){}else{this._decoratedO[el.id]=[];}this._decoratedO[el.id].push(el);return el;};
F.changes_were_made=function(){this.changes_count=1;};
F.changes_were_saved=function(){this.changes_count=0;};
F.make_one_photo_edit_pop=function(){var div=document.createElement("div");div.id="one_photo_edit_pop";document.body.appendChild(div);F.decorate(div,F._one_photo_edit_pop).pop_go_go_go();return div;};
F.make_batch_edit_pop=function(_47,_48){var div=document.createElement("div");div.id="batch_edit_pop";document.body.appendChild(div);F.decorate(div,F._batch_edit_pop).pop_go_go_go(_47,_48);return div;};
F.make_shadow=function(_49,_50,_51,_52){var _53=(_51)?_51:document.body;var div=document.createElement("div");div.id=_49+"_shadow";if(_52&&_52.parentNode==_51){_53.insertBefore(div,_52);}else{_53.appendChild(div);}F.decorate(div,F._shadow).shadow_go_go_go(_49,_50,_53);return div;};
F._carrot=new Object();F._carrot.carrot_go_go_go=function(_54,_55,_56,_57){this.carrot_open_img=new Image();if(_54=="up"){this.carrot_open_img.src="/images/caret_open_up.gif";}else{this.carrot_open_img.src="/images/caret_open_down.gif";}this.carrot_closed_img=new Image();this.carrot_closed_img.src="/images/caret_closed.gif";this.carrot_is_open=(_55)?1:0;if(this.carrot_is_open){this.carrot_open_text=(_56)?_56:this.childNodes[1].innerHTML;this.carrot_closed_text=(_57)?_57:this.carrot_open_text;}else{this.carrot_closed_text=(_57)?_57:this.childNodes[1].innerHTML;this.carrot_open_text=(_56)?_56:this.carrot_closed_text;}this.style.cursor=(document.all)?"hand":"pointer";this.onclick_default=this.onclick;this.onclick=this.carrot_onclick;};
F._carrot.carrot_onclick=function(e){if(this.carrot_is_open){this.carrot_close();}else{this.carrot_open();}};
F._carrot.carrot_open=function(){this.onclick_default();this.carrot_is_open=1;this.childNodes[0].src=this.carrot_open_img.src;this.childNodes[1].innerHTML=this.carrot_open_text;};
F._carrot.carrot_close=function(){this.onclick_default();this.carrot_is_open=0;this.childNodes[0].src=this.carrot_closed_img.src;this.childNodes[1].innerHTML=this.carrot_closed_text;};
F._shadow=new Object();F._shadow.shadow_go_go_go=function(_59,_60,_61){this.shadow_use_local_coords=(_61!=document.body);this.shadow_for_id=_59;this.style.zIndex=_60;this.style.display="none";this.style.position="absolute";this.shadow_height_plus=-14;this.shadow_width_plus=-14;this.shadow_x_plus=-0;this.shadow_y_plus=-0;var _62=""+"<table class=\"shadow_table\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"padding:0px;\">"+"<tr><td width=\"11\"><img class=\"trans_png\" width=\"11\" height=\"11\" src=\"/images/tc_white_shadow_tl.png\"></td><td id=\""+this.id+"_width_controller\"><img class=\"trans_png\" width=\"100%\" height=\"11\" src=\"/images/tc_white_shadow_t.png\"></td><td width=\"11\"><img class=\"trans_png\" width=\"11\" height=\"11\" src=\"/images/tc_white_shadow_tr.png\"></td></tr>"+"<tr><td height=\"30\" id=\""+this.id+"_height_controller\"><img class=\"trans_png\" width=\"11\" height=\"100%\" src=\"/images/tc_white_shadow_l.png\"></td><td></td><td><img class=\"trans_png\" width=\"11\" height=\"100%\" src=\"/images/tc_white_shadow_r.png\"></td></tr>"+"<tr><td><img class=\"trans_png\" width=\"11\" height=\"11\" src=\"/images/tc_white_shadow_bl.png\"></td><td><img class=\"trans_png\" width=\"100%\" height=\"11\" src=\"/images/tc_white_shadow_b.png\"></td><td><img class=\"trans_png\" width=\"11\" height=\"11\" src=\"/images/tc_white_shadow_br.png\"></td></tr></table>";this.innerHTML=_62;};
F._shadow.shadow_size_and_place=function(){var el=_ge(this.shadow_for_id);var x=_find_x(el,this.shadow_use_local_coords)+this.shadow_x_plus;var y=_find_y(el,this.shadow_use_local_coords)+this.shadow_y_plus;this.style.left=x+"px";this.style.top=y+"px";var w=((el.offsetWidth)+this.shadow_width_plus);if(w<0){w=0;}var h=((el.offsetHeight)+this.shadow_height_plus);if(h<0){h=0;}_ge(this.id+"_width_controller").style.width=w+"px";_ge(this.id+"_height_controller").style.height=h+"px";};
F._shadow.shadow_show=function(){this.style.display="block";};
F._shadow.shadow_hide=function(){this.style.display="none";};

var _get_event_src=function(e){if(e&&e.target){return e.target;}if(e&&e.srcElement){return e.srcElement;}if(window.event){return window.event.srcElement;}return null;};
var _get_event_keycode=function(e){if(e){return e.keyCode;}if(window.event){return window.event.keyCode;}return null;};
var _keys={TAB:9,ENTER:13,RIGHTARROW:39,DOWNARROW:40,UPARROW:38,BACKSPACE:8,CTRL:17,ESCAPE:27};
var _hitch=function(obj,meth){return function(){return obj[meth].apply(obj,arguments);};};
var _find_x=function(el,_156){if(_156){if(el.style.left){return _pi(el.style.left);}return el.offsetLeft;}var _157=0;if(el.offsetParent){while(el.offsetParent){_157+=el.offsetLeft;el=el.offsetParent;}}else{if(el.x){_157+=el.x;}}return _157;};
var _find_y=function(el,_158){if(_158){if(el.style.top){return _pi(el.style.top);}return el.offsetTop;}var _159=0;if(el.offsetParent){while(el.offsetParent){_159+=el.offsetTop;el=el.offsetParent;}}else{if(el.y){_159+=el.y;}}return _159;};
myPos={getPos:function(el){return [this.getX(el),this.getY(el)];return [_find_x(el,1),_find_y(el,1)];},getY:function(el){return _find_y(el);return _find_y(el,1);},getX:function(el){return _find_x(el);return _find_x(el,1);}};
var _find_screen_height=function(){if(window.innerHeight){return window.innerHeight;}else{if(document.documentElement.clientHeight){return document.documentElement.clientHeight;}else{if(document.body.clientHeight){return document.body.clientHeight;}}}};
var _find_screen_width=function(){if(window.innerWidth){return window.innerWidth;}else{if(document.documentElement.clientWidth){return document.documentElement.clientWidth;}else{if(document.body.clientWidth){return document.body.clientWidth;}}}};

//Flickr End