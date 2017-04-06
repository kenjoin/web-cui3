<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundBasePage" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="style.css" type="text/css" />
<user:custom type="style" runat="server"></user:custom>
</head>
<style type="text/css">
  body{ padding:0; margin:0;}
</style>
<body>
<table  height="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td align="left" valign="middle"  width="7"  class="separator"> <img id=ImgArrow src="<%=GetCurrentThemeUrl("separator1.gif")%>" width="7"  style="cursor: hand;" onClick="top.changeDisplayMode()" > </td>
	</tr>
</table>
</body>
</html>