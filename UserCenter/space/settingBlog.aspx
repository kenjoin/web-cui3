<%@ Page Language="C#" Inherits="UserCenter.System.Space.SettingBlog" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<style>
td input, .ipt input { margin-bottom:5px; margin-right:3px; }
</style>
</head>
<body>
<div class="main-wrap">
  <div class="path">
    <p>当前位置：空间管理<span>&gt;</span>空间设置</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear"> <a href="settingSpace.aspx"><span>基本信息</span></a> <a href="settingBlog.aspx" class="current"><span>博客设置</span></a> 
    <a href="settingPhoto.aspx" ><span>相册设置</span></a> <a href="settingWord.aspx" ><span>留言设置</span></a></h5>
    </div>
    <div class="tab-con-s1">
      <div class="set-area">
        <bairong:Message runat="server"></bairong:Message>
        <div class="form web-info-form">
          <form runat="server">
            <h3 class="title">修改博客设置</h3>
            <div class="form-row">
              <label class="form-field">每页显示日志数</label>
              <div class="form-cont">
                  <asp:TextBox id="tbBlogContentPageNum" class="input-txt" style="width:120px;" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="tbBlogContentPageNum"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
          <asp:RegularExpressionValidator ControlToValidate="tbBlogContentPageNum" ValidationExpression="\d+" Display="Dynamic" ErrorMessage=" *" runat="server"/>
              </div>
            </div>
            <div class="form-row">
              <label class="form-field">日志显示模式</label>
              <div class="form-cont">
				<asp:RadioButtonList ID="rblBlogArticleListType" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
              </div>
            </div>
            <div class="form-row">
              <label for="declare" class="form-field">是否允许匿名评论</label>
              <div class="form-cont ipt">
              <asp:CheckBox ID="cbIsBlogAcceptAnonymousComment" Text="允许匿名评论" runat="server"></asp:CheckBox>
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