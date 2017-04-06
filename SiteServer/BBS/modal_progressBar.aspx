<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.ProgressBar" Trace="false" EnableViewState="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<title><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></title>
<link rel="stylesheet" href="../style.css" type="text/css" />
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" language="javascript">
function writeProgressBar(totalCount, currentCount, message)
{
	if (totalCount != 0 && currentCount != 0)
	{
		$('#prgressBarPercetage').html(parseInt(currentCount*100/totalCount) + '');
		$('#progressBarBoxContent').width(parseInt(currentCount*350/totalCount));
		if (totalCount == currentCount)
		{
			$('#progressWarningText').html('任务完成。');
		}
		else
		{
			$('#progressWarningText').html('(' + currentCount + '/' + totalCount + ')&nbsp;');
			if (message) $('#progressWarningText').html($('#progressWarningText').html() + message);
		}
	}
	else
	{
		if (message) $('#progressWarningText').html(message);
	}
}

function writeResult(resultMessage, errorMessage)
{
	$('#progressError').hide();
	$('#progressWarning').hide();
	if (errorMessage != '')
	{
		$('#progressError').show();
		$('#progressErrorText').html(errorMessage);
	}
	if (resultMessage != '')
	{
		writeProgressBar(1, 1);
		$('#progressWarning').show();
		$('#progressWarningText').html(resultMessage);
	}
}
</script>
</HEAD>
<body>
<form id="MyForm" runat="server">
	<table cellpadding="3" width="95%" align="center">
        <tr>
            <td><div id="progressBar" style="margin: 1em 2em 2em 2em;">
                    <div id="theMeter">
                        <div id="progressBarText" style="font-weight: bold; padding: 5px;">任务完成: <span id="prgressBarPercetage">0</span>%</div>
                        <div id="progressBarBox" style="width: 350px; height: 20px; border: 1px inset; background: #eee;">
                            <div id="progressBarBoxContent" style="width: 0; height: 20px; border-right: 1px solid #444; background: #9ACB34;"></div>
                        </div>
                    </div>
                </div>
                <div id="progressError" style="position:relative; margin: 2em; display:none;">
                    <p style=" padding-left: 25px; padding-bottom: 5px; color:red; text-align: left; vertical-align: middle; background:url(Pic/icon/error.jpg) no-repeat left top;"> 执行出错，错误信息为：<span id="progressErrorText"></span></p>
                </div>
                <div id="progressWarning" style="position:relative; margin: 2em;">
                    <p style=" padding-left: 25px; padding-bottom: 5px; text-align: left; vertical-align: middle; background:url(Pic/icon/warn.jpg) no-repeat left top;"> 进度：<span id="progressWarningText">任务初始化...</span><br />
                        您可以安全地离开此窗口！</p>
                </div></td>
        </tr>
        <tr>
            <td align="center">
                <input type="button" class="button" name="Cancel" value="关 闭" onClick="window.parent.hidePopWin();" />
            </td>
        </tr>
    </table>
</form>
<asp:Literal id="RegisterScripts" runat="server" />
</body>
</HTML>