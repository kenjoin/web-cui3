<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.QuestionTo" %>

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
</head>
<body>
    <ctrl:Header runat="server"></ctrl:Header>
    <div class="main">
        <div class="hack10px">
        </div>
        <div class="box950">
            <div class="c72bd">
                <a href="./" target="_self">知道首页</a> > <span class="black">提问题</span></div>
            <div class="hack10px">
            </div>
            <div class="qnbox_l2">
                <strong class="c61bd">提问</strong>
                <p class="shadow">
                </p>
                <p class="hack5px">
                </p>
                <script>
function dosearch(){
   var frm = document.getElementById("questionTo");
   if(_check_form(frm))
   {
     frm.action = "question.aspx";
	 frm.submit(); 
   }
}
function _check_form(f){
	if(f.word.value == ""){
		alert("请输入问题的标题");
		f.word.focus();
		return false;
	}
	var temp = f.word.value.replace(/　/g," ");
	if(trimString(temp) == ""){
		alert("请输入问题的标题");
		f.word.value = "";
		f.word.focus();
		return false;
	}
	
	if(f.word.value.length > 50){
		alert("问题标题过长，请精简字数");
		return false;
	}
	return true;
}
function trimString(s){
	s=s.replace(/\r\n/g,"");
	s=s.replace(/^\s*|\s*$/g, "");
	s=s.replace(/　/g,"");
	return s;
}
    </script>
                <form id="questionTo" method="get" action="">
                <div class="box_con ln22">
                    <p class="f14px">
                       请输入您的提问：<input type="text" name="word" class="input_ask" value="<%=Request.QueryString["word"]%>"  />
                        <input name="gosearch" type="button" class="btn_get" value="继续提问" onclick="dosearch();"/>
                        <span class="orange"><a href="../ask/help.aspx#1" target="_blank">
                            如何进行提问</a></span></p>
                    <p class="orange" style="text-indent: 110px;">
                        标题长度不能超过50个字</p>
                </div>
                </form>
                <p class="hack8px">
                </p>
            </div>
            <div class="shadow">
            </div>
        </div>
    </div>
    <ctrl:Footer runat="server"></ctrl:Footer>
</body>
</html>
