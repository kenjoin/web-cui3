<%@ Page Language="C#" Inherits="UserCenter.System.Platform.Attributes" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="../../sitefiles/bairong/scripts/independent/validate.js"></script>
</head>
<body>
<div class="main-wrap">
  <div class="path">
    <p>当前位置：个人信息<span>&gt;</span>个人档案管理</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear"> <a class="current" href="attributes.aspx"><span>修改资料</span></a> <a href="avatar.aspx"><span> 更换头像</span></a> <a href="password.aspx"><span> 修改密码</span></a> </h5>
    </div>
    <div class="tab-con-s1">
      <div class="set-area">
        <bairong:Message runat="server"></bairong:Message>
        <div class="form web-info-form">
          <form id="myForm" runat="server">
            <h3 class="title">基础属性设置</h3>
            <div class="form-row">
              <label class="form-field">显示名</label>
              <div class="form-cont">
                <asp:TextBox ID="tbDisplayName" class="input-txt" MaxLength="50" Size="20" runat="server" />
                <asp:RequiredFieldValidator ControlToValidate="tbDisplayName" ErrorMessage=" *" Display="Dynamic" runat="server" />
              </div>
            </div>
            <div class="form-row">
              <label class="form-field">电子邮箱</label>
              <div class="form-cont">
                <asp:TextBox class="input-txt" ID="tbEmail" runat="server" MaxLength="50" Size="20"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbEmail" ErrorMessage=" *" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="tbEmail" ValidationExpression="(\w[0-9a-zA-Z_-]*@(\w[0-9a-zA-Z-]*\.)+\w{2,})" ErrorMessage=" *" Display="Dynamic" runat="server" />
              </div>
            </div>
            <div class="form-row">
              <label for="declare" class="form-field">签名</label>
              <div class="form-cont">
                <asp:TextBox TextMode="MultiLine" ID="tbSignature" class="input-area" Style="width: 345px; height: 60px;" runat="server" />
              </div>
            </div>
            <asp:PlaceHolder ID="phAttributes" runat="server">
              <h3 class="title">其他属性设置</h3>
              <user:UserAuxiliaryControl ID="acUserControl" 
         formatDefault='<div class="form-row"><label for="declare" class="form-field">{0}</label><div class="form-cont">{1}</div></div>'
         AdditionalAttributes='class="input-txt"'
         runat="server"/>
            </asp:PlaceHolder>
            <div class="btn-area">
              <asp:LinkButton ID="lbSubmit" class="btn-general highlight" OnClick="Submit_OnClick" runat="server"><span>保存</span></asp:LinkButton>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
