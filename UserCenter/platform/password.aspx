<%@ Page Language="C#" Inherits="UserCenter.System.Platform.Password" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="JavaScript" src="../js/script.js"></script>
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main-wrap">
  <div class="path">
    <p>当前位置：个人信息<span>&gt;</span>个人档案管理</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear">
      <a href="attributes.aspx"><span>修改资料</span></a>
      <a href="avatar.aspx"><span> 更换头像</span></a>
      <a class="current" href="password.aspx"><span> 修改密码</span></a>
      </h5>
    </div>
    <div class="tab-con-s1">
      <div class="set-area">
        <bairong:Message runat="server"></bairong:Message>
        <div class="form web-info-form">
          <form runat="server">
            <h3 class="title">修改密码</h3>
            <div class="form-row">
              <label class="form-field">输入当前密码</label>
              <div class="form-cont">
                <asp:TextBox TextMode="Password" id="tbOldPassword" class="input-txt" MaxLength="50" Size="20" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="tbOldPassword"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
          <asp:PlaceHolder ID="phPasswordError" runat="server"> </asp:PlaceHolder>
              </div>
            </div>
            <div class="form-row">
              <label class="form-field">输入新密码</label>
              <div class="form-cont">
                <asp:TextBox TextMode="Password" id="tbPassword" class="input-txt" MaxLength="50" Size="20" runat="server"/>
          <asp:RequiredFieldValidator ControlToValidate="tbPassword"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
              </div>
            </div>
            <div class="form-row">
              <label for="declare" class="form-field">重复输入新密码</label>
              <div class="form-cont">
                <asp:TextBox TextMode="Password" id="ConfirmPassword" class="input-txt" MaxLength="50" Size="20" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="ConfirmPassword"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
          <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="tbPassword"
			ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="两次输入的密码不一致！请再输入一遍您上面填写的密码。"></asp:CompareValidator>(请重复输入一遍新密码。)
              </div>
            </div>
            <div class="btn-area">
              <asp:LinkButton class="btn-general highlight" OnClick="Submit_OnClick" runat="server"><span>保存</span></asp:LinkButton>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
