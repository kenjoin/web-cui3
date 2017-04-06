<%@ Page Language="C#" Inherits="UserCenter.System.Platform.UserMessageAdd" enableEventValidation="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="../js/script.js"></script>
</head>
<body class="main-body">
<bairong:Message runat="server"></bairong:Message>
<div class="path">
  <p>当前位置：系统功能<span>&gt;</span>发送短消息</p>
</div>
<div class="main-cont">
  <h3 class="title">发送短消息</h3>
  <div class="set-area">
    <form runat="server" id="myForm" enctype="multipart/form-data">
      <div class="form">
      <div class="set-area">
        <div class="form-row">
          <label for="" class="form-field">收件人</label>
          <div class="form-cont">
            <asp:TextBox id="tbUserName" class="input-txt"	
				runat="server"/>
            <asp:RequiredFieldValidator
                ControlToValidate="tbUserName"
                ErrorMessage=" 收件人不能为空"
                Display="Dynamic"
                runat="server"
                />
          </div>
        </div>
        <div class="form-row">
          <label for="" class="form-field">内容</label>
          <div class="form-cont">
            <asp:TextBox ID="tbContent" TextMode="MultiLine" class="input-area area-s4" cols="80" rows="5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ControlToValidate="tbContent"
                ErrorMessage=" 内容不能为空"
                Display="Dynamic"
                runat="server"
                />
          </div>
        </div>
        <div class="btn-area">
          <asp:LinkButton ID="Submit" class="btn-general highlight" OnClick="Submit_OnClick" runat="server"><span>发送</span></asp:LinkButton>
          <a class="btn-general" href="javascript:location.href = '<%=GetReturnUrl()%>';"><span>返 回</span></a> </div>
      </div>
    </form>
  </div>
</div>
<script>
    document.body.onkeydown = function (moz_ev) {
        var ev = null;
        if (window.event) {
            ev = window.event;
        } else {
            ev = moz_ev;
        }
        if (ev != null && ev.ctrlKey && ev.keyCode == 13) {
            document.getElementById("Submit").click();
        }
    }
</script>
</body>
</html>
