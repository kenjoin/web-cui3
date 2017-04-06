<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Question" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Catalogs" Src="include/catalogs.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Announcements" Src="include/announcements.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<ctrl:Theme runat="server"></ctrl:Theme>
<script type="text/javascript" src="editor/kindeditor-min.js"></script>
<script type="text/javascript" src="js/editor.js"></script>
</head>
<body>
<ctrl:Header runat="server"></ctrl:Header>
<script>
function getQuestionType(catalogNames, catalogIDs){
	document.getElementById("macth_type").innerHTML = '<table border="0"><tr><td><input name="catalogId" type="radio" value="'+catalogIDs+'" checked/> '+catalogNames+'</td></tr></table>';	
	document.questionForm.catalogIDs.value=catalogIDs;
}
function checkForm4one(f, totalScore, anonymousScore){
	if(checkFormQuestionAdd2(f, totalScore, anonymousScore)){
		f.sub.disabled = true;
		return true;
	}else{
		return false;
	}
}

function checkTitle()
{
	document.getElementById("TheTitle_msg").style.display = "none";
	
	value = document.getElementById('TheTitle').value;
	
	if ( !value || value.length == 0 )
	{
		document.getElementById("TheTitle_msg").innerHTML = "问题标题不能为空！";
		document.getElementById("TheTitle_msg").style.display = "";
		return false;
	}
	
	if ( value.length < 6 )
	{
		document.getElementById("TheTitle_msg").innerHTML = '您的标题不足6个字，请补充！';
		document.getElementById("TheTitle_msg").style.display = "";
		return false;
	}

	return true;
}

function checkCatalog()
{
	document.getElementById("catalogIDs_msg").style.display = "none";
	
	value = document.getElementById('catalogIDs').value;
	
	if ( !value || value.length == 0 )
	{
		document.getElementById("catalogIDs_msg").innerHTML = "请选择问题类别！";
		document.getElementById("catalogIDs_msg").style.display = "";
		return false;
	}

	return true;
}

function checkCredits()
{
    var ddlcredits = document.getElementById("Reward");           
    var ddlcreditsIndex = ddlcredits.selectedIndex;                
    var ddlcreditsValue = ddlcredits.options[ddlcreditsIndex].value; 

	document.getElementById("credits_msg").style.display = "none";
	document.getElementById("anonymous_msg").style.display = "none";
	
	var uvalue = document.getElementById("userCredits").value;
	var avalue = document.getElementById("anonymousCredits").value;
	
	var isAnonymous = document.getElementById("IsAnonymous");
	if(isAnonymous.checked){
	 if (parseInt(ddlcreditsValue) + parseInt(avalue) > parseInt(uvalue))
	 {
		document.getElementById("anonymous_msg").innerHTML = "您的积分不足,无法使用匿名提问！";
		document.getElementById("anonymous_msg").style.display = "";
		return false;}
	 }else{
	  if (parseInt(ddlcreditsValue) > parseInt(uvalue))
	  {
		document.getElementById("credits_msg").innerHTML = "您的积分不足！";
		document.getElementById("credits_msg").style.display = "";
		return false;}
   }
	return true;
}

function checkForm(uname)
{
	var isOk = true;
	if(uname == ""){
	    dialogLogin();
       return false;
    } 
	if (!checkTitle())
	{
		isOk = false;
	}
	if (!checkCatalog())
	{
		isOk = false;
	}
	if (!checkCredits())
	{
		isOk = false;
	}
	return isOk;	
}
</script>
<div class="main">
  <div class="hack10px"> </div>
  <div class="box950">
    <div class="c72bd"> <a href="./" target="_self">知道首页</a> > <span class="black">提问题</span></div>
    <div class="hack10px"> </div>
    <asp:PlaceHolder ID="phInput" runat="server">
      <div class="qnbox_l2"> <strong class="c61bd">提问</strong>
        <p class="shadow"> </p>
        <p class="hack15px"> </p>
        <p class="line_top"> </p>
        <div class="box_con2 ln22">
          <p class="f14px"> <img src="../ask/images/icon_no1.gif" width="42" height="34" /> <span class="black b">与您的提问“<%=Request.QueryString["word"]%>”相关的已解决问题：</span><span
                                class="c8b">（请查看它们是否能解答您的疑问）</span></p>
          <p class="hack8px"> </p>
          <asp:PlaceHolder ID="phTipBlank" runat="server" Visible="false">
            <div class="f14px ln22">
              <p style="padding-left: 50px"> 未找到和您的提问相匹配的已解决问题，请在下面继续提问</p>
            </div>
          </asp:PlaceHolder>
          <asp:Repeater ID="rptQuestionList" runat="server">
            <ItemTemplate>
              <p class="f14px">
                <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
              </p>
              <p class="black">
                <asp:Literal ID="ltlContent" runat="server"></asp:Literal>
              </p>
              <p class="hack8px"> </p>
            </ItemTemplate>
          </asp:Repeater>
          <p class="grey"> </p>
          <div>
            <asp:PlaceHolder ID="phHolder" runat="server"></asp:PlaceHolder>
          </div>
        </div>
        <p class="hack8px"> </p>
        <p class="line_top"> </p>
        <form id="questionForm" runat="server">
          <div class="box_con2 ask_a black ln22">
            <p class="f14px b"> <img src="../ask/images/icon_no2.gif" width="42" height="34" /> 如果您没有找到合适的回答，请继续提问：</p>
            <p class="hack8px"> </p>
            <p class="f14px"> <span class="sp1">问题标题：</span>
              <asp:TextBox ID="TheTitle" runat="server" onblur="checkTitle();" class="input_ask"></asp:TextBox>
              &nbsp;<span
                                id="TheTitle_msg" class="error"></span> </p>
            <p class="hack8px"> </p>
            <p class="line_part" style="width: 100%;"> </p>
            <p class="hack8px"> </p>
            <p class="f14px"> <span class="sp1">详细描述：</span>
              <textarea id="content" name="content" cols="100" rows="8" style="width:630px;height:180px;visibility:hidden;"></textarea>
              <script>
			  var askUrl = '<%=AskUrl%>'
			  KE.show({
	id : 'content',
	imageUploadJson : askUrl + '/editor/upload_json.ashx',
	allowFileManager : false,
	items : ['fontname', 'fontsize', '|', 'textcolor', 'bgcolor', 'bold', 'italic', 'underline', 'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist', '|', 'emoticons', 'image', 'media', 'link', '|', 'ubb_code', 'ubb_hide'],
	afterCreate : function(id) {
		KE.event.ctrl(document, 13, function() {
			KE.util.setData(id);
			onAddReplySubmit(document.forms['myform']);
		});
		KE.event.ctrl(KE.g[id].iframeDoc, 13, function() {
			KE.util.setData(id);
			onAddReplySubmit(document.forms['myform']);
		});
	}
});
			  </script>
            </p>
            <p class="hack8px"> </p>
            <p class="line_part" style="width: 100%;"> </p>
            <p class="hack8px"> </p>
            <p class="f14px"> <span class="sp1">问题分类：</span> <span id="macth_type"></span> </p>
            <p style="padding-left: 120px;"> <span class="f14px c61bd"><a href="javascript:void 0;" onclick="showDialog('dialog/catalogSelect.aspx', 500, 700, '选择分类');" class="f14px c61bd">选择分类</a></span>&nbsp;<span id="catalogIDs_msg" class="error"></span></p>
            <input type="hidden" id="catalogIDs" runat="server" value="" />
            <p class="hack8px"> </p>
            <p class="line_part" style="width: 100%;"> </p>
            <p class="hack8px"> </p>
            <p> <span class="sp1 f14px">悬赏分：</span>
              <asp:DropDownList ID="Reward" runat="server" onchange="checkCredits()">
                <asp:ListItem Value="0">0</asp:ListItem>
                <asp:ListItem Value="5">5</asp:ListItem>
                <asp:ListItem Value="10">10</asp:ListItem>
                <asp:ListItem Value="20">20</asp:ListItem>
                <asp:ListItem Value="30">30</asp:ListItem>
              </asp:DropDownList>
              &nbsp;<span id="credits_msg" class="error"></span>悬赏分越高，您的问题会越受关注，从而得到更佳答案! 参见<a onmouseover="" class="orange hand" href="help.aspx#6"
                                target="_blank">如何获得更多悬赏分</a></p>
            <p class="hack8px"> </p>
            <p class="line_part" style="width: 100%;"> </p>
            <p class="hack8px"> </p>
            <p> <span class="sp1 f14px">匿名发表：</span>
              <asp:CheckBox ID="IsAnonymous" runat="server" onchange="checkCredits()"> </asp:CheckBox>
              &nbsp;<span id="anonymous_msg" class="error"></span>
              <label for="anonymous"> 您可以对问题设定匿名，但您需要付出积分。</label>
            </p>
            <p class="hack8px"> </p>
            <p class="line_part" style="width: 100%;"> </p>
            <p class="hack8px"> </p>
            <asp:Button ID="Submit" OnClick="Submit_Click" class="btn_sub f14px" Text="提交问题"
                            runat="server"></asp:Button>
            <asp:HiddenField ID="userCredits" runat="server" />
            <asp:HiddenField ID="anonymousCredits" runat="server" />
          </div>
        </form>
        <p class="hack15px"> </p>
      </div>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phInputed" runat="server" Visible="false">
      <div class="qnbox_l2"> <strong class="c61bd">提问成功</strong>
        <p class="shadow"> </p>
        <p class="hack5px"> </p>
        <div class="box_con f14px black ln22" style="width: 600px;">
          <p class="b center"> 您的提问已经提交成功</p>
          <p class="center"> 为了保证提问的质量，我们会对您的提问内容进行一定的审核，您可能在几分钟之后才能看到自已的提问。 </p>
          <p class="center"> 提交成功后，请您在<span class="red">15天之内</span>处理您的提问，否则，<span class="red">将被扣除积分
            <asp:Literal
                                ID="ltlScore" runat="server"></asp:Literal>
            分</span>。<span
                                class="red"><a href="../ask/help.aspx" target="_blank">积分规则</a></span>。</p>
          <p class="hack10px"> </p>
          <div style="width: 520px; margin: 0 auto;">
            <p> 您可以处理提问的方式包括：</p>
            <ul class="f12px">
              <li><span class="c61bd">采纳答案：</span>选择一个回答作为正确答案，结束提问；</li>
              <li><span class="c61bd">问题补充：</span>可以对您的提问补充细节，以得到更准确的答案；</li>
              <li><span class="c61bd">追加悬赏：</span>提高悬赏分，以提高问题的关注度；</li>
              <li><span class="c61bd">发起投票：</span>不知道哪个回答最好时，可让网友投票来选出最佳答案；</li>
              <li><span class="c61bd">无满意答案：</span>没有满意的回答，还可直接结束提问，关闭问题。</li>
            </ul>
            <p class="hack10px"> </p>
            <p> 您还可以通过以下链接查看自己的问题被回答的情况：</p>
            <p class="c72bd center">
              <asp:Literal ID="ltlMyQuestion" runat="server"></asp:Literal>
              &nbsp;&nbsp;
              <asp:Literal ID="ltlCatalog" runat="server"></asp:Literal>
            </p>
          </div>
        </div>
        <p class="hack8px"> </p>
      </div>
    </asp:PlaceHolder>
    <div class="shadow"> </div>
  </div>
</div>
<ctrl:Footer runat="server"></ctrl:Footer>
</body>
</html>
