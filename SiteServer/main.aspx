<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkMain" Trace="false" %>
<html>
<head>

<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<title><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></title>
<meta http-equiv="x-ua-compatible" content="ie=7" />
<link rel="icon" href="pic/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="pic/favicon.ico" type="image/x-icon" />
<script>
function changeDisplayMode(){
	if(document.getElementById("bottomframes").cols=="180,7,*"){
		document.getElementById("bottomframes").cols="0,7,*"; 
		document.getElementById("separator").contentWindow.document.getElementById('ImgArrow').src="<%=GetCurrentThemeUrl("separator2.gif")%>"
	}else{
		document.getElementById("bottomframes").cols="180,7,*"
		document.getElementById("separator").contentWindow.document.getElementById('ImgArrow').src="<%=GetCurrentThemeUrl("separator1.gif")%>"
	}
}
</script>
</head>

<frameset id="mainframes" framespacing="0" border="false" rows="58,*" frameborder="0" scrolling="yes">
<frame name="top" scrolling="no" src="top.aspx?module=<%=ModuleID%>">
<frameset id="bottomframes" framespacing="0" border="false" cols="180,7,*" frameborder="0" scrolling="yes">
	<frame name="left" scrolling="auto" marginwidth="0" marginheight="0" src="platform/background_blank.html" noresize />
	<frame id="separator" name="separator" src="separator.aspx" noresize scrolling="no" />
	<frame name="right" scrolling="auto" src="platform/framework_right.aspx?module=<%=ModuleID%>">
</frameset>
</frameset>

</html>