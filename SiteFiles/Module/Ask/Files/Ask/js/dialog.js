function moveDialog(e) {
	var agt = navigator.userAgent.toLowerCase();
	var is_ie = ((agt.indexOf("msie") != -1) && (agt.indexOf("opera") == -1));
	if(is_ie){document.body.onselectstart = function(){return false;}}
	var e  = is_ie ? window.event : e;
	var o  = $('#dialog_window');
	var x  = e.clientX;
	var y  = e.clientY;
	var w = e.clientX - parseInt(o.offset().left);
	var h = e.clientY - parseInt(o.offset().top);

	document.body.setCapture && o[0].setCapture();
	document.onmousemove = function(e) {
		var e  = is_ie ? window.event : e;
		var x  = e.clientX;
		var y  = e.clientY;
		o.css({ 
			top: y - h + 'px',
			left: x - w + 'px'
		});
	};
	document.onmouseup   = function() {
		if(is_ie){document.body.onselectstart = function(){return true;}}
		document.body.releaseCapture && o[0].releaseCapture();
		document.onmousemove = null;
		document.onmouseup = null;
	};
}

function showDialog(url, height, width, title, tips, ok, cancel){
	hideDialog();
	
	$('#dialog_iframe').attr('src', url);
	
	if (tips){
		$('#dialog_tips_container').show();
		$('#dialog_tips').html(tips);
	}else{
		$('#dialog_tips_container').hide();
	}
	$('#dialog_title').html(title);
	$('#dialog_outer').css({ 
		height: (height - 20) + 'px'
	});
	$('#dialog_body').css({ 
		height: (height - 48) + 'px',
		width: (width - 20) + 'px'
	});
	if (ok || cancel){
		$('#dialog_control').show();
		$('#dialog_body').css({ 
			height: (height - 78) + 'px'
		});
		if (ok){
			$('#dialog_ok').show();	
		}else{
			$('#dialog_ok').hide();	
		}
		if (cancel){
			$('#dialog_cancel').show();	
		}else{
			$('#dialog_cancel').hide();	
		}
	}else{
		$('#dialog_control').hide();
	}
	$('#dialog_window').css({
		top: $(window).scrollTop() + $(window).height()/5 + 'px',
		left: ($(window).width() - width)/2 + 'px',
		height: height + 'px',
		width: width + 'px'
	}).show();
	
	return false;
}
function hideDialog(){
	$('#dialog_window').hide();
}

function getCheckBoxCollectionValue(checklist){
	var retval = new String("");
	if (checklist){
		if (!checklist.length){
			if(checklist.checked){
				retval = checklist.value + '';
			}
		}else{
			var hasValue = false;
			for (var i = 0; i < checklist.length; i++){
				if(checklist[i].checked){
					hasValue = true;
					retval += checklist[i].value + ',';
				}
			}
			if (hasValue){
				retval = retval.substring(0, retval.length - 1);
			}
		}
	}
	return retval;
}

function alertCheckBoxCollection(checklist, alertString){
	var collectionValue = getCheckBoxCollectionValue(checklist);
	if (collectionValue.length == 0){
		failureMessage(alertString);
		return true;
	}
	return false;
}

$(document).ready(function() { 
	$('#dialog_close').click(function() {
		hideDialog();
	});
});