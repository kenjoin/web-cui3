<%@ Page Language="c#" Inherits="BaiRong.BackgroundPages.FrameworkError"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<title>错误提示</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
</head>
<body>
<form id="MyForm" runat="server">

<DIV class="column">
<div class="columntitle">错误</div>

	<table width="100%" cellpadding="4" cellspacing="4" border="0">
	<tr>
	  <td align="left"><asp:Label id="ErrorMessage" ForeColor="#FF0000" runat="server"/></td>
	</tr>
	</table>	
</DIV>
</form>

</body>
</html>