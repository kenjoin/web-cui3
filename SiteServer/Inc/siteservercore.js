function __Help_OnClick(sHelpID)
{
	var oHelp = getById(sHelpID);
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


function getById(sID, oCtl)
{
	if (oCtl == null)
		oCtl = document;
	if (oCtl.getElementById) //(dnn.dom.browser.isType(dnn.dom.browser.InternetExplorer) == false)
		return oCtl.getElementById(sID);
	else
		return oCtl.all(sID);
}

function isNull(obj){
	if (typeof(obj) == "undefined")
	  return true;
	  
	if (obj == undefined)
	  return true;
	  
	if (obj == null)
	  return true;
	 
	return false;
}

function debug(code){
	try{
		eval(code);
	}catch(e){
	   alert(e);
	   alert(e.number & 0xFFFF);
	   alert(e.description);
	}
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


//显示消息

function _dispear(){
	var obj = document.getElementById('popupMessage');
	if (obj != null)
	{
		obj.style.display = 'none';
		_displaySelectBoxes();
	}
}

function _hideSelectBoxes() {
	var frm = document.frames;
	for (i=0; i < frm.length; i++)
    {
		_hideSelectBox(frm[i]);
	}

	_hideSelectBox(window);
}

function _hideSelectBox(win){
	var selects = win.document.getElementsByTagName("SELECT");
	for(var i = 0; i < selects.length; i++) {
		selects[i].style.visibility="hidden";
	}
}

function _displaySelectBoxes() {
	var frm = document.frames;
	for (i=0; i < frm.length; i++)
    {
		_displaySelectBox(frm[i]);
	}

	_displaySelectBox(window);
}

function _displaySelectBox(win) {
	var selects = win.document.getElementsByTagName("SELECT");
	for(var i = 0; i < selects.length; i++) {
		selects[i].style.visibility="visible";
	}
}

function _getTextContent(node)
{
	if(document.all){
		return node.text;   
	} else{
		return node.textContent;
	}
}