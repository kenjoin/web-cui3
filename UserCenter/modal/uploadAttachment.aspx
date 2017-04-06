<%@ Page Language="C#" Trace="false" Inherits="UserCenter.System.Modal.UploadAttachment" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<title>上传文件</title>

<user:custom type="style" runat="server"></user:custom>
<META http-equiv=content-type content=text/html;charset=utf-8>
<style type="text/css">
*{font-size:12px;background-color:#fff;}
</style>
<script type="text/javascript" language="javascript">
function InputChange(oInput)
{
	var disp = 0;
	var s = oInput.value;
	var ext;
	if (s.length<5)
		return;
	ext = s.substr(s.length-3,3).toLowerCase();
	if (ext=="jpg" || ext=="jpeg" || ext=="gif" || ext=="bmp" || ext=="png")
	{
		document.getElementById('previewRow').style.display="";
		document.getElementById('preview').src = s;
	}else{
		document.getElementById('previewRow').style.display="none";
		document.getElementById('preview').src = "../../sitefiles/bairong/Icons/empty.gif";
	}
}
</script>
<%=Scripting%>
</head>
<body>
<bairong:Message runat="server"></bairong:Message>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">

<table cellpadding="3" width="95%" align="center">
	<tr id="previewRow" style="display:none"><td align="center">
	   <IMG class="preview" src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview" id="preview">
	</td> </tr>
<tr><td align="center" valign="top" >
		<table align="center" width="95%">
		<tr><td width="120">
		<bairong:help HelpText="选择需要上传的文件" Text="选择上传文件：" runat="server" ></bairong:help>
		</td>
		  <td><input type=file  id=myFile size="35" runat="server"/> 
		<asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" />
</td>
		</tr>
		</table>
	</td></tr>
	<tr><td align="center">
	   <asp:Button class="button" id="Submit" text="上 传" onclick="Submit_OnClick" runat="server"/>&nbsp;&nbsp;
	  <input type="button" class="button" value="取 消" onClick="javascript:window.parent.hidePopWin();" />
	</td> </tr>
	</table>

</form>
</body>
</html>