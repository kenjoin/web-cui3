<%@ Page Language="c#" Inherits="BaiRong.BackgroundPages.FrameworkLoading" Trace="False"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<html>
<head>
<title>载入程序</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
</head>
<body>
<table width="100%" height="380" border="0" cellpadding="4" cellspacing="0">
  <tr>
    <td align="center" valign="middle">
	<%
	string tip = "正在执行操作，请稍侯... ";
	if (Request.QueryString["RedirectType"] == "Loading")
	{
		tip = "转入中，请稍候... ";
	}
	%>
	<%=tip%><img src = "Pic/loading.gif" width="16" height="16" />
    <script language="javascript">
	setTimeout(function(){location.href = "<%=GetRedirectUrl()%>";},200);
	</script>
    </td>
  </tr>
</table>
</body>
</html>