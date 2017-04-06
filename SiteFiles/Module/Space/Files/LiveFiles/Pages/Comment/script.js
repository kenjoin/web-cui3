function commentAddOnPos(obj, charvalue)
{							
	obj.focus();
	var r = document.selection.createRange();
	var ctr = obj.createTextRange();
	var i;
	var s = obj.value;
	
	var ivalue = "&^asdjfls2FFFF325%$^&"; 
	r.text = ivalue;
	i = obj.value.indexOf(ivalue);
	r.moveStart("character", -ivalue.length);
	r.text = "";
	obj.value = s.substr(0,i) + charvalue + s.substr(i,s.length);
	ctr.collapse(true);
	ctr.moveStart("character", i + charvalue.length);
	ctr.select();
}

function getStlInputParameters(ajaxDivID)
{
var ajaxElement = document.getElementById(ajaxDivID);
if(ajaxElement == null) return;

var inputs = ajaxElement.getElementsByTagName("input");
var myhash = new Hash();
if(inputs != null && inputs.length > 0)
{
	for(var i = 0 ;i < inputs.length; i++)
	{
		var name = inputs[i].getAttribute('name');
		if (name != null && name.length > 0)
		{
			var values = '';
			if((inputs[i].type=="radio" || inputs[i].type=="checkbox") && inputs[i].checked)
			{
				if (myhash.get(name) != null)
				{
					values = myhash.get(name);
					values = values + "," + inputs[i].value;
				}
				else
				{
					values = inputs[i].value;
				}
			}
			else
			{
				values = inputs[i].value;
			}
			myhash.set(name, values.replace(/</g,"_lessthan_"));
		}
	}
}

var textareas = ajaxElement.getElementsByTagName("textarea");
if(textareas != null && textareas.length > 0)
{
	for(var i = 0 ;i < textareas.length; i++)
	{
		var name = textareas[i].getAttribute('name');
		if (name != null && name.length > 0)
		{
			myhash.set(name, textareas[i].value.replace(/</g,"_lessthan_"));
			try{
				var editor = FCKeditorAPI.GetInstance(name);
				if (editor != undefined)
				{
					myhash.set(name, editor.GetXHTML().replace(/</g,"_lessthan_")); 
				}
			}catch(e){}		
		}
	}
}

return myhash;
}

function commentInputSubmit(resultsPageUrl, ajaxDivID, applicationName, isAnonymous){
	try{
		var myhash = getStlInputParameters(ajaxDivID);
		if (myhash.get('Content') == null || myhash.get('Content') == '') {
			alert("评论必须填写");
			$('Content').focus();
			return false;
		}
		if (myhash.get('ValidateCode') == null || myhash.get('ValidateCode') == '') {
			alert("验证码必须填写");
			$('ValidateCode').focus();
			return false;
		}
		else
		{
			var allcookies = document.cookie;
			var pos = allcookies.indexOf(applicationName + "=");
			if (pos != -1) {
				var start = pos + applicationName.length + 1;
				var end = allcookies.indexOf(";", start);  
				if (end == -1) 
				   end = allcookies.length;
				var value = allcookies.substring(start, end);
				if (myhash.get('ValidateCode') + '' != value) {
					alert("验证码不正确，请重新填写");
					$('ValidateCode').focus();
					return false;
				}
			}
		}
		var option = {
			method:'post',
			evalScripts:true,
			parameters: myhash, 
			onSuccess:function(){
				updater_comments();
			},
			onFailure:function(){
				$(ajaxDivID).innerHTML = "操作失败";
			}
		};
		new Ajax.Updater ({success:ajaxDivID}, resultsPageUrl, option);
	}catch(e){}
}