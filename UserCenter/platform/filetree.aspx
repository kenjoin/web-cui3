<%@ Page Language="C#" Inherits="UserCenter.System.Platform.FillTree" enableViewState="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/script.js"  type="text/javascript"></script>
<script type="text/javascript">
    function isNull(obj) {
        if (typeof (obj) == "undefined")
            return true;

        if (obj == undefined)
            return true;

        if (obj == null)
            return true;

        return false;
    }
</script>
<style type="text/css">
body { padding:0; margin:0; }
a { font-size:12px; }
</style>
<%=GetScript() %>
</head>
<body>
<div class="main-cont">
  <h3 class="title">文件夹</h3>
  <div class="box">
    <div class="btn-group clear">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;">
        <asp:Literal id="Tree" runat="server" />
      </table>
    </div>
  </div>
</div>
</body>
</html>