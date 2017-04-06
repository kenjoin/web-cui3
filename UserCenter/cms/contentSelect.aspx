<%@ Page Language="C#" Inherits="UserCenter.System.CMS.ContentSelect" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/admin/admin_lib.js"></script>
</head>
<body class="main-body">
<div class="path">
  <p>当前位置：内容投稿<span>&gt;</span>添加投稿</p>
</div>
<div class="main-cont">
  <h3 class="title">选择投稿站点及栏目</h3>
  <bairong:Message runat="server"></bairong:Message>
  <div class="set-area">
    <div class="form">
      <form runat="server">
        <div class="form-row">
          <label for="oper" class="form-field">请选择投稿站点</label>
          <div class="form-cont">
            <asp:DropDownList ID="ddlPublishmentSystemID" runat="server"></asp:DropDownList>
            <p class="form-tips">请选择需要投稿的站点。</p>
          </div>
        </div>
        <div class="form-row">
          <label for="oper" class="form-field">请选择投稿栏目</label>
          <div class="form-cont">
            <asp:DropDownList ID="ddlNodeID" runat="server"  AutoPostBack="true"></asp:DropDownList>
            <p class="form-tips">请选择对应站点的栏目，您的稿件将投寄到此栏目中。</p>
          </div>
        </div>
        <asp:PlaceHolder ID="phUpload" runat="server">
        <div class="form-row">
          <label for="oper" class="form-field">上传Word稿件<br />
            （可选）</label>
          <div class="form-cont">
            <input type="file" class="input-txt" id="fileUpload" size="35" runat="server"/>
            <p style="padding-top:5px;">
              <asp:CheckBox id="cbIsClearFormat" Checked="true" runat="server" Text="上传时清除Word格式"/>
              &nbsp;&nbsp;
              <asp:CheckBox id="cbIsClearImages" runat="server" Text="上传时清除Word中的图片"/>
            </p>
            <p class="form-tips">如果希望通过Word文档上传稿件，请在此选择对应的Word文档。</p>
          </div>
        </div>
        </asp:PlaceHolder>
        <div class="btn-area">
          <asp:LinkButton CssClass="btn-general highlight" OnClick="Submit_OnClick" runat="server"><span>下一步</span></asp:LinkButton>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>