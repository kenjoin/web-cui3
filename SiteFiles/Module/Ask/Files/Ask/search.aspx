<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Search" %>
<%@ Register TagPrefix="page" Namespace="SiteServer.Ask.Controls" Assembly="SiteServer.Ask" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Catalogs" Src="include/catalogs.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Announcements" Src="include/announcements.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Weekstar" Src="include/weekstar.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Weekrank" Src="include/weekrank.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Rank" Src="include/rank.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Tips" Src="include/tips.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<ctrl:Theme runat="server"></ctrl:Theme>
</head>
<body>
<!--头部-->
<ctrl:Header runat="server"></ctrl:Header>
<div class="main">
  <div class="hack10px"> </div>
  <div class="box950">
    <div class="site c72bd"> <a href="./" target="_self">快问首页</a> &gt;
      <h1> <span class="black">搜索结果</span></h1>
    </div>
    <div class="hack10px"> </div>
    <div class="tab f14px">
      <div class="line_tab"> </div>
    </div>
    <div class="hack10px"> </div>
    <div class="left718">
      <div class="tab1 f14px" style="width: 710px">
        <asp:Literal ID="ltlQuestionType" runat="server"></asp:Literal>
      </div>
      <div class="qnbox_l2 top0px bottom0px" style="border-bottom: none;"> 
        <script>
function askQuestion(uname){
   var frm = document.getElementById("questionTo");
   if(uname == ""){
       dialogLogin();
       return false;
   } else{
     if(_check_form(frm)){
        frm.action = "question.aspx";
	    frm.submit();} 
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
        <asp:PlaceHolder ID="phFailure" visible="false" runat="server">
          <form id="questionTo" method="get" action="">
            <div class="box_con f14px black ln22" style="width: 650px; overflow: hidden">
              <p> 未找到和您的查询相匹配的
                <asp:Literal ID="ltlStateOne" runat="server"></asp:Literal>
              </p>
              <p> 您可以在此提问，让其他网友帮您一起找答案！<br />
                <input name="word" type="text" class="inp_txt" size="35" value="<%=Request.QueryString["word"]%>" />
                <input name="ask" type="button" class="btn_ask" value="我要提问" onclick="askQuestion('<%=UserName%>');" />
              </p>
              <p class="hack10px"> </p>
              <p> 您还可以：
              <ul>
                <li>点击 “<span class="c72bd">
                  <asp:Literal
                                    ID="ltlStateTwo" runat="server"></asp:Literal>
                  </span>”或“<span class="c72bd">
                  <asp:Literal ID="ltlStateThree" runat="server"></asp:Literal>
                  </span>” 查询； </li>
                <li>查看输入的文字是否有误；</li>
                <li>去掉不必要的字词，例如“的”、“什么”等；</li>
                <li>查看<span class="c72bd"><a href="" class="c72bd">快知道帮助</a></span>。</li>
              </ul>
              </p>
            </div>
          </form>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="phSuccess" visible="false" runat="server">
          <form runat="server">
          <div class="box_con" style="width: 650px">
            <span class="s6 c8b" style="display: block; float: right;">
            <asp:Literal ID="ltlCounts" runat="server"></asp:Literal>
            </span>
            <p class="clear"> </p>
            <asp:Repeater ID="rptQuestionList" runat="server">
              <ItemTemplate>
                <h1>
                  <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
                </h1>
                <p class="black">
                  <asp:Literal ID="ltlContent" runat="server"></asp:Literal>
                </p>
                <p class="c8b">
                <span class="c61bd">
                  <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
                  </span> -
                  <asp:Literal ID="ltlTime" runat="server"></asp:Literal>
                  - <span class="c61bd">
                  <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                  </span></p>
                <p class="hack8px"> </p>
              </ItemTemplate>
            </asp:Repeater>
          </div>
          <div style="margin-left: auto; margin-right: auto; width: 400px;">
          <page:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></page:sqlpager>
        </div>
          </form>
        </asp:PlaceHolder>
        
        <div class="hack8px"> </div>
      </div>
      <div class="shadow"> </div>
      <div class="hack8px"> </div>
    </div>
    <div class="right232"> 
      <!--公告区-->
      <ctrl:Announcements  TotalNum="3" OpenWin="True" runat="server"></ctrl:Announcements>
      <!--总积分排行-->
      <ctrl:Rank  runat="server"></ctrl:Rank>
      <!--小贴士-->
      <ctrl:Tips  runat="server"></ctrl:Tips>
    </div>
  </div>
</div>
<div class="main">
  <div class="hack10px"> </div>
  <div class="clear"> </div>
  <div class="line_bot"> </div>
</div>
<ctrl:Footer runat="server"></ctrl:Footer>
</body>
</html>
