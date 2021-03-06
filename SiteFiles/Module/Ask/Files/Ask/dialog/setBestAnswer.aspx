﻿<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Dialog.SetBestAnswer" Trace="False" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<STYLE>
body { padding: 0px; margin: 0px; }
.container { padding: 10px; }
* { outline-style: none; }
.mb5 { margin-bottom: 5px;}
.mr20 { margin-right: 20px; }
.w { white-space: nowrap; }
.cp { cursor: pointer; }
textarea { border-bottom: #e1e1e1 1px solid; border-left: #999999 1px solid; padding-bottom: 3px; line-height: 1.5; padding-left: 3px; padding-right: 3px; background: #fff; border-top: #999999 1px solid; border-right: #e1e1e1 1px solid; padding-top: 3px; }
select { padding-bottom: 1px; padding-left: 1px; padding-right: 1px; padding-top: 1px; }
.textareaA { line-height: 1.3; width: 95%; background: #fff; height: 30px; overflow: auto; }
.input { border-bottom: #e1e1e1 1px solid; border-left: #999999 1px solid; padding-bottom: 2px; padding-left: 3px; padding-right: 3px; background: #fff; color: #000; font-size: 1em; border-top: #999999 1px solid; border-right: #e1e1e1 1px solid; padding-top: 2px; }
.input_wa { width: 154px; }
.line td { border-bottom: #ddd 1px solid; }
.tr3 td { padding: 6px; }
.tr3:hover { background-color:#F1F1F1; }
</STYLE>
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="../js/jquery.form.js"></script>
<script type="text/javascript">
function onSubmit(form) {
	$(form).ajaxSubmit({
		dataType: 'json',
		success: function(data) { 
			if (data.success == 'true'){
				window.top.location.reload(false);
			}else{
				alert(data.errorMessage);
			}
		}
	});
}
</script>
<link href="../css/window.css" rel="stylesheet" type="text/css">
</head>
<body>
<form onsubmit="onSubmit(this);return false;" action="?isPostBack=True&answersID=<%=Request.QueryString["answersID"]%>" method="post">
  <div class="container">
    <table width="100%" class="dtb">
      <tbody>
        <tr class="tr3 line">
          <td width="65"><label for="moveto">提问标题:</label></td>
          <td><div class="mb5">
              <asp:Literal ID="ltlTitle" runat="server"></asp:Literal></div></td>
        </tr>
        <tr class="tr3 line">
          <td width="65"><label for="moveto">你选择的最佳答案是:</label></td>
          <td><div class="mb5">
              <asp:Literal ID="ltlAnswerContent" runat="server"></asp:Literal></div></td>
        </tr>
        <tr class="tr3 line">
          <td width="65"><label for="moveto">回答者:</label></td>
          <td><div class="mb5">
              <asp:Literal ID="ltlAnswerUserName" runat="server"></asp:Literal></div></td>
        </tr>
        <tr class="tr3 line">
          <td width="65"><label for="moveto">感谢语或评论(选填):</label></td>
          <td><div class="mb5">
              <textarea cols="50" rows="4" style="border: 1px solid #CCC;" id="comment" name="comment"></textarea></div></td>
        </tr>
      </tbody>
    </table>    
    <table width="100%" class="dtb">
      <tbody>
        <tr>
          <td align="center"><input type="submit" class="dialog_btn" value="确 定" /></td>
        </tr>
      </tbody>
    </table>
  </div>
</form>
</body>
</html>