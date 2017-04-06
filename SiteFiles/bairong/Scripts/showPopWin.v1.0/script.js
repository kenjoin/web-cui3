 // Popup code
var gPopupMask = null;
var gPopupContainer = null;
var gPopFrame = null;
var gReturnFunc;
var gPopupIsShown = false;
var gPopupTitle = null;

var gHideSelects = false;
var gHideObjects = true;

var gTabIndexes = new Array();
// Pre-defined list of tags we want to disable/enable tabbing into
var gTabbableTags = new Array("A","BUTTON","TEXTAREA","INPUT","IFRAME");	

// If using Mozilla or Firefox, use Tab-key trap.
if (!document.all) {
	document.onkeypress = keyDownHandler;
}

/**
 * Initializes popup code on load.	
 */
function initPopUp() {
	gPopupMask = document.getElementById("popupMask");
	gPopupContainer = document.getElementById("popupContainer");
	gPopFrame = document.getElementById("popupFrame");
	
	try{
		new Draggable(gPopupContainer,{revert:false,handle:'popupTitleCenter'});
	}catch(e){}
	
	// check to see if this is IE version 6 or lower. hide select boxes if so
	// maybe they'll fix this in version 7?
	var brsVersion = parseInt(window.navigator.appVersion.charAt(0), 10);
	if (brsVersion <= 6 && window.navigator.userAgent.indexOf("MSIE") > -1) {
		gHideSelects = true;
	}
}

function addEvent(obj, evType, fn){
 if (obj.addEventListener){
    obj.addEventListener(evType, fn, true);
    return true;
 } else if (obj.attachEvent){
    var r = obj.attachEvent("on"+evType, fn);
    return r;
 } else {
    return false;
 }
}

function removeEvent(obj, evType, fn, useCapture){
  if (obj.removeEventListener){
    obj.removeEventListener(evType, fn, useCapture);
    return true;
  } else if (obj.detachEvent){
    var r = obj.detachEvent("on"+evType, fn);
    return r;
  } else {
    alert("Handler could not be removed");
  }
}

//addEvent(window, "load", initPopUp);

/**
 * Code below taken from - http://www.evolt.org/article/document_body_doctype_switching_and_more/17/30655/
 *
 * Modified 4/22/04 to work with Opera/Moz (by webmaster at subimage dot com)
 *
 * Gets the full width/height because it's different for most browsers.
 */
function getViewportHeight() {
	if (window.innerHeight) return window.innerHeight;
	if (window.top.innerHeight!=window.undefined) return window.top.innerHeight;
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientHeight;
	if (document.body) return document.body.clientHeight; 
	return window.undefined; 
}
function getViewportWidth() {
	if (window.innerWidth) return window.innerWidth; 
	if (window.top.innerWidth!=window.undefined) return window.top.innerWidth; 
	if (document.compatMode=='CSS1Compat') return document.documentElement.clientWidth; 
	if (document.body) return document.body.clientWidth; 
	return window.undefined; 
}

 /**
	* @argument width - int in pixels
	* @argument height - int in pixels
	* @argument url - url to display
	* @argument returnFunc - function to call when returning true from the window.
	*/

function showPopWin(url, width, height, returnFunc) {
   
	gPopupIsShown = true;
	disableTabIndexes();
	gPopupMask.style.display = "block";
	gPopupContainer.style.display = "block";
	// calculate where to place the window on screen
	centerPopWin(width, height);
	
	var titleBarHeight = parseInt(document.getElementById("popupTitleBar").offsetHeight, 10);
	
	gPopupContainer.style.width = width + "px";
	var fullHeight = getViewportHeight();
	if (height+titleBarHeight+50 > fullHeight)
	{
		gPopupContainer.style.height = (fullHeight - 50) + "px";
	}
	else
	{
		gPopupContainer.style.height = (height+titleBarHeight) + "px";
	}
	
	// need to set the width of the iframe to the title bar width because of the dropshadow
	// some oddness was occuring and causing the frame to poke outside the border in IE6
	gPopFrame.style.width = (parseInt(document.getElementById("popupTitleBar").offsetWidth, 10) - 10) + "px";
	//gPopFrame.style.height = (height) + "px";
	gPopupTitle = window.frames["popupFrame"].document.title;
	
	// set the url
	url = (url.indexOf("?") != -1) ? url + "&random=" : url + "?random=";
	url = url + _random();
	gPopFrame.src = url;
	
	gReturnFunc = returnFunc;
	// for IE
	if (gHideSelects || gHideObjects) {
		hideSelectBoxes();
	}
	
	window.setTimeout("setPopTitle();", 249);
}

//
var gi = 0;
function centerPopWin(width, height) {
	if (gPopupIsShown == true) {
		if (width == null || isNaN(width)) {
			width = gPopupContainer.offsetWidth;
		}
		if (height == null) {
			height = gPopupContainer.offsetHeight;
		}
		
		var fullHeight = getViewportHeight();
		var fullWidth = getViewportWidth();
		
		var theBody = document.documentElement;
		
		var scTop = parseInt(theBody.scrollTop,10);
		var scLeft = parseInt(theBody.scrollLeft,10);
		
		gPopupMask.style.height = fullHeight + "px";
		gPopupMask.style.width = fullWidth + "px";
		gPopupMask.style.top = scTop + "px";
		gPopupMask.style.left = scLeft + "px";
		
		var titleBarHeight = parseInt(document.getElementById("popupTitleBar").offsetHeight, 10);
		
		e = getEvent();
   		var src = e.srcElement || e.target;
		
		var arr = findPosition(src); // 事件发生元素的坐标(相对网页顶部)
		
		var showy = arr[1];//相对网页顶部的高度
		var t;
		var notShow = showy - e.screenY + 185;
		if (notShow < 0) notShow = 0;
		t = notShow + 20;
		
		//var t = notShow + window.screen.Height - 150; // event.screenY是相对于显示器顶部的高度 (showy - event.screenY):网页上部没有显示的高度
		//gPopupContainer.style.top = t + 'px';
		gPopupContainer.style.top = t + 'px';
		
		gPopupContainer.style.left =  (scLeft + ((fullWidth - width) / 2)) + "px";
	}
}

// Find element x,y location
function findPosition( oLink ) {
	
  var posX = null;
  var posY = null;
  if( oLink.offsetParent ) {
	for( posX = 0, posY = 0; oLink.offsetParent; oLink = oLink.offsetParent ) {
	  posX += oLink.offsetLeft;
	  posY += oLink.offsetTop;
	}
	return [ posX, posY ];
  } else {
	posX = oLink.x;
	posY = oLink.y;
	return [ posX, posY ];
  }
}

/**
 * @argument callReturnFunc - bool - determines if we call the return function specified
 * @argument returnVal - anything - return value 
 */
function hidePopWin(callReturnFunc) {

	gPopupIsShown = false;
	restoreTabIndexes();
	if (gPopupMask == null) {
		return;
	}
	gPopupMask.style.display = "none";
	gPopupContainer.style.display = "none";
	if (callReturnFunc == true && gReturnFunc != null) {
		gReturnFunc(document.getElementById(["popupFrame"]).returnVal);
	}
	
	gPopFrame.src = gPopFrame.initSrc;
	
	// display all select boxes
	if (gHideSelects || gHideObjects) {
		displaySelectBoxes();
	}
}

/**
 * Sets the popup title based on the title of the html document it contains.
 * Uses a timeout to keep checking until the title is valid.
 */
function setPopTitle() {
	if (window.frames["popupFrame"].document.title == null || window.frames["popupFrame"].document.title == gPopupTitle) 
	{
		window.setTimeout("setPopTitle();", 99);
	} 
	else 
	{
		document.getElementById("popupTitle").innerHTML = window.frames["popupFrame"].document.title;
	}
}

// Tab key trap. iff popup is shown and key was [TAB], suppress it.
// @argument e - event - keyboard event that caused this function to be called.
function keyDownHandler(e) {
    if (gPopupIsShown && e.keyCode == 9)  return false;
}

// For IE.  Go through predefined tags and disable tabbing into them.
function disableTabIndexes() {
	if (document.all) {
		var i = 0;
		for (var j = 0; j < gTabbableTags.length; j++) {
			var tagElements = document.getElementsByTagName(gTabbableTags[j]);
			for (var k = 0 ; k < tagElements.length; k++) {
				gTabIndexes[i] = tagElements[k].tabIndex;
				tagElements[k].tabIndex="-1";
				i++;
			}
		}
	}
}

// For IE. Restore tab-indexes.
function restoreTabIndexes() {
	if (document.all) {
		var i = 0;
		for (var j = 0; j < gTabbableTags.length; j++) {
			var tagElements = document.getElementsByTagName(gTabbableTags[j]);
			for (var k = 0 ; k < tagElements.length; k++) {
				tagElements[k].tabIndex = gTabIndexes[i];
				tagElements[k].tabEnabled = true;
				i++;
			}
		}
	}
}


function hideSelectBoxes() {
//	var frm = document.frames;
//	if (frm) {
//		for (i=0; i < frm.length; i++)
//		{
//			if (frm[i].name != "popupFrame"){
//				hideSelectBox(frm[i]);
//			}
//		}
//	}

	hideSelectBox(window);
}

function hideSelectBox(win){
	var selects = win.document.getElementsByTagName("SELECT");
	var objects = win.document.getElementsByTagName("OBJECT");
	if(gHideSelects)
	{
		for(var i = 0; i < selects.length; i++) {
			selects[i].style.visibility="hidden";
		}
	}
	if(gHideObjects)
	{
		for(var i = 0; i < objects.length; i++) {
			objects[i].style.visibility="hidden";
		}
	}
}

function displaySelectBoxes() {
//	var frm = document.frames;
//	if (frm) {
//		for (i=0; i < frm.length; i++)
//		{
//			if (frm[i].name != "popupFrame"){
//				displaySelectBox(frm[i]);
//			}
//		}
//	}

	displaySelectBox(window);
}

function displaySelectBox(win) {
	var selects = win.document.getElementsByTagName("SELECT");
	var objects = win.document.getElementsByTagName("OBJECT");
	if(gHideSelects)
	{
		for(var i = 0; i < selects.length; i++) {
			selects[i].style.visibility="visible";
		}
	}
	if(gHideObjects)
	{
		for(var i = 0; i < objects.length; i++) {
			objects[i].style.visibility="visible";
		}
	}
}

document.onkeydown=function(){
	if(gPopupIsShown == false){
		window.event.returnValue= true;
		return true ;
	}
	if (window.event.keyCode == 27){
		hidePopWin(false); //ESC
		window.event.keyCode = 0;
		window.event.returnValue= false;
	} 
}

function getEvent()
{
    var   i   =   0;
    if(document.all) return   window.event;
    func = getEvent.caller;
    while(func != null)
    {
        var   arg0 = func.arguments[0];
        if(arg0)
        {
            if(arg0.constructor == MouseEvent)
            {
                return   arg0;
            }
        }
        func = func.caller;
    }
    return   null;
}