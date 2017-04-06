<%@ Page Language="C#" Inherits="UserCenter.System.Platform.FileRight" enableViewState="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>文档附件管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<style>
#fileM { background:#fff url( ../img/bg_file.gif ) no-repeat 0 0; line-height:160%; padding:40px 0 0 136px; margin:20px 20px 0 10px; height:150px }
</style>
<script language="javascript" charset="gb2312" src="/sitefiles/bairong/scripts/global.v1.3.5.js"></script>
</head>
<body class="main-body">
<user:custom type="showpopwin" runat="server" />
<div class="main-cont">
  <h3 class="title">文档附件管理</h3>
  <div class="box">
    <div class="btn-group clear">
      <p>
      <div id="fileM"> 您可以将各种需要暂存的文档文件保存到此。
        <div class="addrtitle"> 容量：　　　<span class="black">
          <asp:Literal ID="ltlMaxSize" runat="server"></asp:Literal>
          </span><br/>
          剩余：　　　<span class="black">
          <asp:Literal ID="ltlLeavingsSize" runat="server"></asp:Literal>
          </span><br/>
          单文件限制：<span class="black">
          <asp:Literal ID="ltlSingleMaxSize" runat="server"></asp:Literal>
          </span></div>
        <a class="btn-general highlight" href="javascript:;" onClick="<%=GetUploadClickString()%>"><span>上传文件</span></a> </div>
      </p>
      <div style="clear:both"><br>
      </div>
    </div>
  </div>
</div>
</body>
</html>
