<%@ Page Language="C#" validateRequest="false" Inherits="UserCenter.System.CMS.ContentAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../SiteFiles/bairong/Scripts/global.v1.3.5.js"></script>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/admin/admin_lib.js"></script>
<script type="text/javascript" charset="utf-8" src="../../sitefiles/bairong/scripts/independent/validate.js"></script>
<style type="text/css">
label { padding-left:5px; }
</style>
<user:custom  type="style" runat="server"></user:custom>
<bairong:Code  type="JQuery" runat="server" />
<script language="javascript" src="../../UserCenter/js/auxiliary.js"></script>
</head>
<body class="main-body">
<user:custom  type="showpopwin" runat="server" />
 <bairong:Message runat="server"></bairong:Message>
<div class="path">
  <p>当前位置：内容投稿<span>&gt;</span>添加投稿</p>
</div>
<div class="main-cont">
  <h3 class="title">
    <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
  </h3>
  <div class="set-area">
    <div class="form">
      <form id="myForm" enctype="multipart/form-data" runat="server">
        <site:AuxiliaryControl ID="Attributes" FormatTextEditor="<div class='form-row'><label class='form-field'>{0}</label><div class='form-cont'>{1}</div></div>" FormatDefault="<div class='form-row'><label class='form-field'>{0}</label><div class='form-cont'>{1}</div></div>" whereUsed="usercenter" runat="server"/>
        <asp:PlaceHolder ID="phContentAttributes" runat="server">
          <div class="form-row">
            <label for="title" class="form-field">内容属性：</label>
            <div class="form-cont">
              <asp:CheckBoxList ID="ContentAttributes" RepeatLayout="Flow" RepeatDirection="Horizontal" RepeatColumns="5" runat="server"/>
            </div>
          </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="phContentGroup" runat="server">
          <div class="form-row">
            <label for="title" class="form-field">所属内容组：</label>
            <div class="form-cont">
              <asp:CheckBoxList ID="ContentGroupNameCollection" RepeatDirection="Horizontal" RepeatColumns="5" runat="server"/>
            </div>
          </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="phTags" runat="server">
          <div class="form-row">
            <label for="title" class="form-field">内容标签：</label>
            <div class="form-cont">
              <asp:TextBox class="input-txt" id="Tags" MaxLength="50" style="width:320px" runat="server"/>
              多个标签请用英文逗号（,）分开 </div>
          </div>
        </asp:PlaceHolder>
        <div class="btn-area">
          <asp:LinkButton id="lbSubmit" class="btn-general highlight" onclick="Submit_OnClick" runat="server"><span>提交</span></asp:LinkButton>
          &nbsp;&nbsp; <a class="btn-general highlight" onClick="submitPreview();"><span>预览</span></a> &nbsp;&nbsp; <a class="btn-general highlight" onClick="location.href='<%=ReturnUrl%>';return false;"><span>返回</span></a> </div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">
$('#oper').change(function(e) {
	var $topic = $('#topic'),
		$link = $('#link');

	if (this.value == 1)
	{
		$link.attr('disabled', 'true').addClass('input-disabled');
		$topic.removeAttr('disabled').removeClass('input-disabled');
		if (e)
		{
			$topic.focus();
		}
	}
	else {
		$topic.attr('disabled', 'true').addClass('input-disabled');
		$link.removeAttr('disabled').removeClass('input-disabled');
		if (e)
		{
			$link.focus();
		}
	}
}).change();
</script>
</body>
</html>