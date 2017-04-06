<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundParameter" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<DIV class="column">
  <div class="columntitle">查看机器参数</div>
  <table cellspacing="2" cellpadding="2" Align="center" border="0" style="width:100%;">
    <tr class="summary-title" align="left" style="height:25px;">
      <td width="140">参数名称</td>
      <td>值</td>
    </tr>
    <%=PrintParameter()%>
  </table>
</div>
</body>
</html>