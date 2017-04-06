// JavaScript Document

var tid = setTimeout(jump_close, 1000);

function jump_close()
{
	clearTimeout(tid);
	var time = 0;
	if(time){
		tid = setTimeout(jump_close, 1000);
		}
	else{
	document.getElementById('tipsdiv').style.display="none";
	}
}