<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundCache" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">数据缓存内容</div>
    <table cellspacing="3" cellpadding="3" Align="center" border="0" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:25px;">
        <td>缓存键</td>
        <td>缓存值</td>
      </tr>
      <%=PrintDataCache()%>
      <tr>
        <td colspan="2" align="center"><br>
          <asp:Button class="button" id="Submit" text="清除缓存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>