<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.UploadImageSingle" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<html>
<head>
<title>上传图片</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<META http-equiv=content-type content=text/html;charset=utf-8>
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
		document.getElementById('preview').src = s;
	}else{
		document.getElementById('preview').src = "../../sitefiles/bairong/Icons/empty.gif";
	}
}
</script>
<%=Scripting%>
<bairong:Code type="Prototype" runat="server" />
</head>
<body>
<bairong:Message runat="server"></bairong:Message>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">

<table cellpadding="3" width="95%" align="center">
	<tr><td align="center">
	   <IMG class="preview" src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview" id=preview>
	</td> </tr>
<tr><td align="center" valign="top" >
		<table align="center" width="95%">
		<tr><td width="120">
		<bairong:help HelpText="选择需要上传的图片" Text="选择上传的图片：" runat="server" ></bairong:help>
		</td>
		  <td align="left"><input type=file  id=myFile size="45" runat="server"/> 
		<asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
		</tr>
		</table>
	</td></tr>
	<tr><td align="center">
	   <asp:Button class="button" id="Submit" text="上 传" onclick="Submit_OnClick" runat="server"/>&nbsp;&nbsp;
	   <asp:Button class="button" id="Cancel" text="取 消" runat="server" />
	</td> </tr>
	</table>

</form></body>
</html>