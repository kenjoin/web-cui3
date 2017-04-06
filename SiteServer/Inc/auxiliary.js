function ShowImg(obj, imageID, rootUrl, publishmentSystemUrl){

    if(obj.value==""){
		document.getElementById(imageID).setAttribute('href', '../../sitefiles/bairong/Icons/empty.gif');
		return false;
	}
	if(obj.value.search(/\.bmp|\.jpg|\.jpeg|\.gif|\.png$/i) != -1) {
		var imageUrl = obj.value;
		if (imageUrl){
			if (imageUrl.charAt(0) == '~'){
				imageUrl = imageUrl.replace('~', rootUrl);
			}else if (imageUrl.charAt(0) == '@'){
				imageUrl = imageUrl.replace('@', publishmentSystemUrl);
			}
		}
		if(imageUrl && imageUrl.substr(0,2)=='//'){
			imageUrl = imageUrl.replace('//', '/');

}
		document.getElementById(imageID).setAttribute('href', imageUrl);
	}
}

function DeleteAttachment(attributeName)
{
	document.getElementById("add_" + attributeName).style.display='';
	document.getElementById("del_" + attributeName).style.display='none';
	document.getElementById(attributeName).value = '';
}

function SelectAttachment(attributeName, attachmentUrl, fileViewUrl)
{
	document.getElementById("add_" + attributeName).style.display = 'none';
	document.getElementById("del_" + attributeName).style.display = '';
	document.getElementById("del_" + attributeName).innerHTML = "<a href='javascript:undefined;' onclick=\"" + fileViewUrl + "\">查看</a> <a href='javascript:undefined;' onclick=\"DeleteAttachment('" + attributeName + "');\">移除</a>";
	document.getElementById(attributeName).value = attachmentUrl;
}