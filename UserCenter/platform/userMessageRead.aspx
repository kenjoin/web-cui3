<%@ Page Language="C#" Inherits="UserCenter.System.Platform.UserMessageRead" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/script.js" type="text/javascript"></script>
</head>
<body class="main-body">
<bairong:Message runat="server"></bairong:Message>
<div class="path">
  <p>当前位置：系统功能<span>&gt;</span>短消息</p>
</div>
<div class="main-cont">
  <h3 class="title">短消息</h3>
  <div class="box">
    <div class="btn-group clear">
      <p>
        <asp:Literal ID="ltlContent" runat="server"></asp:Literal>
      </p>
      <div style="clear:both"><br>
      </div>
      <p>发件人：
        <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
      </p>
      <div style="clear:both"></div>
      <p>时间：
        <asp:Literal ID="ltlAddDate" runat="server"></asp:Literal>
      </p>
      <div style="clear:both"><br />
      </div>
      <a class="btn-general highlight" href="javascript:location.href = '<%=GetReplyUrl()%>';"><span>回 复</span></a> <a class="btn-general" href="javascript:if (confirm('此操作将删除所选短消息，确定吗？')) location.href = '<%=GetDeleteUrl()%>';"><span>删 除</span></a> <a class="btn-general" href="javascript:location.href = '<%=GetReturnUrl()%>';"><span>返 回</span></a> </div>
  </div>
</div>
</body>
</html>
