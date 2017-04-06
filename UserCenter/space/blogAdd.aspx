<%@ Page Language="C#" Inherits="UserCenter.System.Space.BlogAdd" enableEventValidation="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script src="../js/script.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=EditorUrl%>/kindeditor-min.js"></script>
<style>
td input, .ipt input { margin-bottom:5px; margin-right:3px; }
</style>
<bairong:Code  type="JQuery" runat="server" />
<script>
function onPageSubmit() {
	KE.sync("tbContent");
}
</script>
</head>
<body class="main-body">
<bairong:Message runat="server"></bairong:Message>
<div class="path">
  <p>当前位置：空间管理<span>&gt;</span>发表日志</p>
</div>
<div class="main-cont">
  <h3 class="title">发表日志</h3>
  <div class="set-area">
    <div class="form">
      <form runat="server" enctype="multipart/form-data">
        <div class="set-area">
        <div class="form-row">
          <label for="" class="form-field">日志标题</label>
          <div class="form-cont">
            <asp:TextBox id="tbTitle" class="input-txt" style="width:320px" runat="server"/>
            <asp:RequiredFieldValidator
                ControlToValidate="tbTitle"
                ErrorMessage=" 标题不能为空"
                Display="Dynamic"
                runat="server"
                />
          </div>
        </div>
        <div class="form-row">
          <label for="" class="form-field">日志分类</label>
          <div class="form-cont">
            <asp:DropDownList ID="ddlCategoryName" DataTextField="CategoryName" DataValueField="CategoryName" runat="server"></asp:DropDownList>
            <input type="hidden" id="hihNewCategoryNames" runat="server" />
            <input type="hidden" id="hihSelectCategoryName" runat="server" />
            <script>
                    function showAddSetBox() {
                        $('#link_addSet').hide();
                        $('#span_addSet').show();
                    }
                    function hideAddSetBox() {
                        $('#link_addSet').show();
                        $('#span_addSet').hide();
                    }
                    function addSet() {
                        if ($('#input_addSet').val()) {
                            document.getElementById('ddlCategoryName').options[document.getElementById('ddlCategoryName').options.length] = new Option($('#input_addSet').val(), $('#input_addSet').val());
                            document.getElementById('ddlCategoryName').selectedIndex = document.getElementById('ddlCategoryName').options.length - 1;
                            $('#hihNewCategoryNames').val($('hlhNewCategoryNames').val() + "," + $('#input_addSet').val());
                            $('#hihSelectCategoryName').val($('#input_addSet').val());
                            $('#input_addSet').val('');
                        }
                        hideAddSetBox();
                    }
                    function categoryChanged() {
                        var value = document.getElementById('ddlCategoryName').options[document.getElementById('ddlCategoryName').selectedIndex].value;
                        $('#hihSelectCategoryName').val(value);
                    }
				</script> 
            <a id="link_addSet" href="javascript:undefined;" onClick="showAddSetBox()">新增分类</a> <SPAN id="span_addSet" style="display:none">
            <INPUT id="input_addSet" class="input-txt" style="width:160px" maxLength="32" value="" />
            <a class="btn-general highlight" href="javascript:addSet();"><span>新增</span></a> <a class="btn-general" href="javascript:hideAddSetBox();"><span>取消</span></a> </SPAN> </div>
        </div>
        <div class="form-row">
          <label for="" class="form-field">内容</label>
          <div class="form-cont">
            <asp:TextBox ID="tbContent" TextMode="MultiLine" style="width:550px;height:350px;visibility:hidden;" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                ControlToValidate="tbContent"
                ErrorMessage=" 内容不能为空"
                Display="Dynamic"
                runat="server"
                />
            <script language="javascript" type="text/javascript">
KE.show({
	id : 'tbContent',
	imageUploadJson : '<%=EditorUrl%>/upload_json.ashx?isUser=True',
	allowFileManager : false,
	items : [
		'fullscreen', 'undo', 'redo', 'print', 'cut', 'copy', 'paste',
		'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
		'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
		'superscript', '|', 'selectall', '-',
		'title', 'fontname', 'fontsize', '|', 'textcolor', 'bgcolor', 'bold',
		'italic', 'underline', 'strikethrough', 'removeformat', '|', 'image',
		'flash', 'media', 'advtable', 'hr', 'emoticons', 'link', 'unlink'
	]
});
</script> 
          </div>
        </div>
        <div class="form-row">
          <label for="" class="form-field">内容标签</label>
          <div class="form-cont">
            <asp:TextBox class="input-txt" id="tbTags" MaxLength="50" style="width:320px" runat="server"/>
            多个标签请用英文逗号（,）分开</div>
        </div>
        <div class="form-row">
          <label for="" class="form-field">访问权限</label>
          <div class="form-cont">
            <asp:RadioButtonList ID="rblSecurityType" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
          </div>
        </div>
        <div class="form-row">
          <label for="" class="form-field">评论</label>
          <div class="form-cont ipt">
            <asp:CheckBox ID="cbIsCommentable" Checked="true" Text="允许评论" runat="server"></asp:CheckBox>
          </div>
        </div>  <div class="form-row">
          <label for="" class="form-field">摘要</label>
          <div class="form-cont ipt">
            <asp:TextBox class="txt input_subt" id="Summary"
				TextMode="MultiLine" style="WIDTH: 400px; HEIGHT: 60px"
				runat="server" />  
        </div>
        </div>
          <asp:LinkButton ID="lbSubmit" class="btn-general highlight" OnClick="Submit_OnClick" runat="server"><span>发表日志</span></asp:LinkButton>
          <asp:LinkButton ID="lbSaveAsDraft" class="btn-general" OnClick="SaveAsDraft_OnClick" runat="server"><span>暂存为草稿</span></asp:LinkButton>
          <a class="btn-general" href="javascript:location.href = 'blogContents.aspx';"><span>返回</span></a> </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
