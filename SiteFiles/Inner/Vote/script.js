function stlVoteOpenWin(isVote, openUrl, ajaxDivID, maxVoteItemNum, cookieName, openWindowHeight, openWindowWidth)
{
var voteElement = document.getElementById(ajaxDivID);
if(voteElement == null) return;

var radios = voteElement.getElementsByTagName("input");
var selectedValues = "";
if(isVote)
{
	var voteItemNum = 0;
	if(radios != null && radios.length > 0)
	{
		for(var i = 0 ;i < radios.length; i++)
		{
			if((radios[i].type=="radio" || radios[i].type=="checkbox") && radios[i].checked)
			{
				selectedValues = selectedValues + radios[i].value + ",";
				voteItemNum++;
				radios[i].checked = false;
			}
		}
		if(selectedValues != "")
		{
			selectedValues = selectedValues.substr(0, selectedValues.length - 1);
		}
	}
	var cookieString = document.cookie;
	if (cookieString.indexOf(cookieName + '=') != -1)
	{
		alert('对不起，您已经参加了投票!');
		return false; 
	}
	if(voteItemNum == 0)
	{
		alert('您至少需要选择一项进行投票！');
		return false; 
	}
	else if (maxVoteItemNum > 0 && voteItemNum > maxVoteItemNum)
	{
		alert('您最多能选择' + maxVoteItemNum + '项进行投票！');
		return false; 
	}
}

window.open(openUrl + "&isVote=" + isVote + "&selectedValues=" + selectedValues,"stlVote","width=" + openWindowWidth + ",height=" + openWindowHeight + ",left=" + (screen.width-openWindowWidth)/2 + ",top=" + (screen.height-openWindowHeight)/2 + ";toolbar=no, menubar=no,scrollbars=yes, resizable=yes,location=no, status=no").focus();
return false;
}
