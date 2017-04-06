// JScript File

function dropToSet(element, dropon, event)
{
    var elementType = element.id.split('_')[0];
    var droponType = dropon.id.split('_')[0];
    if (elementType != 'photo' || droponType != 'set') return;
    
    var contentID = element.id.split('_')[1];
    var setID = dropon.id.split('_')[1];
    if (_isNull(contentID) || _isNull(setID)) return;
	
	var isGoTo = false;
    if (confirm('此操作将把图片添加至相册中，确定吗？'))
	{
		isGoTo = true;
	}
	if (isGoTo)
	{
		_goto("?SetID=" + setID + "&ContentID=" + contentID + "&AddToSet=True");
	}
}

function dropToPhotoList(element, dropon, event)
{
    var elementType = element.id.split('_')[0];
    var droponType = dropon.id.split('_')[0];
    if (elementType != 'setphoto' || droponType != 'photolist') return;
    
    var contentID = element.id.split('_')[1];
    var setID = dropon.id.split('_')[1];
    if (_isNull(contentID) || _isNull(setID)) return;
	
	var isGoTo = false;
    if (confirm('此操作将把图片从相册中移除，确定吗？'))
	{
		isGoTo = true;
	}
	if (isGoTo)
	{
		_goto("?SetID=" + setID + "&ContentID=" + contentID + "&RemoveFromSet=True");
	}
}

function dropToCurrentSet(element, dropon, event)
{   
    var elementType = element.id.split('_')[0];
    var droponType = dropon.id.split('_')[0];
    if ((elementType != 'photo' && elementType != 'setphoto') || droponType != 'currentset') return;
    
    var contentID = element.id.split('_')[1];
    var setID = dropon.id.split('_')[1];
    if (_isNull(contentID) || _isNull(setID)) return;
    
	var isGoTo = false;
    if (elementType == 'photo')
	{
		if (confirm('此操作将把图片添加至相册中并设置为封面，确定吗？'))
		{
			isGoTo = true;
		}
	}
	else if (elementType == 'setphoto')
	{
		if (confirm('此操作将把此图片设置为封面，确定吗？'))
		{
			isGoTo = true;
		}
	}
	if (isGoTo)
	{
		_goto("?SetID=" + setID + "&ContentID=" + contentID + "&Cover=True");
	}
}