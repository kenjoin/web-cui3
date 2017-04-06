<%@ Page Language="C#" Inherits="UserCenter.System.Space.SettingSpace" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main-wrap">
  <div class="path">
    <p>当前位置：空间管理<span>&gt;</span>空间设置</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear"> <a href="settingSpace.aspx" class="current" ><span>基本信息</span></a> <a href="settingBlog.aspx"><span>博客设置</span></a> 
    <a href="settingPhoto.aspx" ><span>相册设置</span></a> <a href="settingWord.aspx" ><span>留言设置</span></a></h5>
    </div>
    <div class="tab-con-s1">
      <div class="set-area">
        <bairong:Message runat="server"></bairong:Message>
        <div class="form web-info-form">
          <form runat="server">
            <h3 class="title">修改基本信息</h3>
            <div class="form-row">
              <label class="form-field">空间名称</label>
              <div class="form-cont">
                <asp:TextBox ID="tbSpaceName" class="input-txt" MaxLength="50" size="20" runat="server"/>
          		<asp:RequiredFieldValidator ControlToValidate="tbSpaceName" ErrorMessage=" *" Display="Dynamic" runat="server" />
                 <p class="form-tips">（将显示在您空间的头部，是您的空间名称）</p>
              </div>
            </div>
            <div class="form-row">
              <label class="form-field">空间描述</label>
              <div class="form-cont">
              <asp:TextBox TextMode="MultiLine" ID="tbSpaceDesc" class="input-area" Style="width: 345px; height: 60px;" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbSpaceDesc" ErrorMessage=" *" Display="Dynamic"></asp:RequiredFieldValidator>
                <p class="form-tips">（将显示在您空间的头部，是您的空间标题的补充）</p>
              </div>
            </div>
            <div class="form-row">
              <label for="declare" class="form-field">空间签名</label>
              <div class="form-cont">
              <asp:TextBox TextMode="MultiLine" ID="tbSignature" class="input-area" Style="width: 345px; height: 60px;" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbSignature" ErrorMessage=" *" Display="Dynamic"></asp:RequiredFieldValidator>
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