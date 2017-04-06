<%@ Page Language="C#" EnableEventValidation="false" Inherits="SiteServer.Ask.Pages.View" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
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
<link href="../ask/css/common.css" rel="stylesheet" type="text/css" />
<ctrl:Theme ID="pageTheme" runat="server"></ctrl:Theme>
<script type="text/javascript" src="editor/kindeditor-min.js"></script>
<script type="text/javascript" src="js/editor.js"></script>
<script>var qId = <%=QuestionID%>;var askUrl = '<%=AskUrl%>';</script>
<script type="text/javascript" src="js/view.js"></script>
</head>
<body>
<ctrl:Header runat="server"></ctrl:Header>
  <div class="main">
    <div class="hack10px"> </div>
    <div class="box950">
      <div class="site c72bd"> <a href="./" target="_self">首页</a> &gt;
        <h1>
          <asp:Literal ID="ltlCatalog" runat="server"></asp:Literal>
        </h1>
      </div>
      <div class="hack10px"> </div>
      <div class="tab f14px">
        <div class="line_tab"> </div>
      </div>
      <div class="hack10px"> </div>
      <div class="left718"> 
        <!--问题内容-->
        <div class="qnbox_l3 black f14px"> <strong><span class="tl_l">
          <asp:Literal ID="ltlState" runat="server"></asp:Literal>
          </span><span class="tl_r orange">提问者：
          <asp:Literal ID="ltlQuestionUserName" runat="server"></asp:Literal>
          (
          <asp:Literal ID="ltlQuestionDate" runat="server"></asp:Literal>
          )</span></strong>
          <div class="clear"> </div>
          <div class="box_con ln24">
            <h1>
              <asp:Literal ID="ltlQuestionTitle" runat="server"></asp:Literal>
            </h1>
            <p> <span class="orange b">悬赏分：<img height="14" src="../ask/images/icon_money.gif" width="14">
              <asp:Literal ID="ltlReword" runat="server"></asp:Literal>
              </span><span class="c8b f12px">
              <asp:Literal ID="ltlDate" runat="server"></asp:Literal>
              </span> </p>
            <p>
              <asp:Literal ID="ltlContent" runat="server"></asp:Literal>
            </p>
            <asp:PlaceHolder ID="phAddContent" runat="server" Visible="false">
              <p> <span class="b">问题补充：</span>
                <asp:Literal ID="ltlAddContent" runat="server"></asp:Literal>
              </p>
            </asp:PlaceHolder>
            <p class="hack5px"> </p>
            <span id="priceSpan"></span>
            
            <asp:PlaceHolder ID="phGotoAnswer" runat="server">
              <div class="hack10px"> </div>
              <input name="" type="button" class="btn_get" value="我要回答" onclick="location.hash='answer';" />
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phone" runat="server" Visible="false">
              <p class="line_part" style="width: 100%;"> </p>
              <p> <span class="c61bd" onclick="addNewContent()" style="cursor: pointer;">问题补充：</span>可以对您的提问补充细节，以得到更准确的答案；</p>
              <div id="addNewContent" style="display: none">
                <p class="hack5px"> </p>
                <p class="c61bd b"> 请对您的提问进行补充：</p>
                <p>
                  <asp:Literal ID="ltlNewContent" runat="server"></asp:Literal>
                </p>
                <p class="f12px"> 补充字数在1000字以内</p>
                <p style="padding-left: 180px;">
                  <input name="" type="submit" class="btn_01l" value="发布补充" onclick="commitContent()" />
                  <input name="" type="button" class="btn_01l" value="返回" onclick="addNewContent()" />
                </p>
                <p class="hack5px"> </p>
                <p class="line_part" style="width: 100%;"> </p>
                <p class="hack5px"> </p>
              </div>
              <p> <span class="c61bd" style="cursor: pointer;" onclick="addReward()">追加悬赏：</span>提高悬赏分，以提高问题的关注度；</p>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phtwo" runat="server" Visible="false">
              <p> <span class="c61bd" style="cursor: pointer;" onclick="setVote()">发起投票：</span>不知道哪个回答最好时，可让网友投票来选出最佳答案；</p>
              <p> <span class="c61bd" style="cursor: pointer;" onclick="closeQuestion()">无满意答案：</span>没有满意的回答，还可直接结束提问，关闭问题。</p>
            </asp:PlaceHolder>
          </div>
        </div>
        <div class="shadow"> </div>
        <!--最佳答案及其评论-->
        <asp:PlaceHolder ID="phBestAnswer" Visible="false" runat="server">
          <div class="hack3px"> </div>
          <div class="qnbox_l5"> <strong class="red"> <img height="16" src="../ask/images/icon_good.gif" width="13"> 最佳答案</strong>
            <div class="clear"> </div>
            <div class="box_con ln24">
              <p class="f14px grey">
                <asp:Literal ID="ltlBestContent" runat="server"></asp:Literal>
              </p>
              <p> <span class="more c8b">
                <asp:Literal ID="ltlAnswerDate" runat="server"></asp:Literal>
                </span><span class="more orange b">回答者：
                <asp:Literal ID="ltlBestAnswerUserName" runat="server"></asp:Literal>
                </span> </p>
              <asp:Literal ID="ltlComments" runat="server" Visible="false"></asp:Literal>
              <%-- <p class="c8b">
                                <span class="f14px black b">对最佳答案评价</span> 目前有 <span id="voteCount">1</span> 个人评论</p>
                            <input class="btn_01l" onclick="bestAnswerVote('3466918','1')" type="button" value="好"
                                name="">
                            <input class="btn_01l" onclick="bestAnswerVote('3466918','0')" type="button" value="不好"
                                name="">
                            <p class="f14px c8b b">
                                <span class="good"><span class="orange" id="goodVoteRate">100%</span> (<span id="goodVote">1</span>)</span><span
                                    class="bad"><span class="c61bd" id="badVoteRate">0%</span> (<span id="badVote">0</span>)</span></p>--%>
              <div class="clear"> </div>
            </div>
          </div>
          <div class="shadow"> </div>
        </asp:PlaceHolder>
        <!--最佳答案的评论--> 
        <!--相关问题-->
        <asp:PlaceHolder ID="phSimilarQuestion" runat="server" Visible="false">
          <div class="hack3px"> </div>
          <div class="qnbox_l4"> <strong class="black">相关问题</strong>
            <div class="box_con f14px ln24">
              <ul>
                <asp:Repeater ID="rptSimilarQuestion" runat="server">
                  <ItemTemplate>
                    <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                  </ItemTemplate>
                </asp:Repeater>
              </ul>
              <asp:Literal ID="ltlSimilarMore" runat="server"></asp:Literal>
            </div>
          </div>
          <div class="shadow"> </div>
          <div class="hack3px"> </div>
        </asp:PlaceHolder>
        <!--回答-->
        <div class="hack3px"> </div>
        <div class="qnbox_l4"> <strong class="black">
          <asp:Literal ID="ltlCaption" runat="server"></asp:Literal>
          (共
          <asp:Literal ID="ltlAnswerCounts" runat="server"></asp:Literal>
          条) </strong>
          <div class="box_con ln22">
            <asp:Repeater ID="rptOtherAnswer" runat="server">
              <ItemTemplate>
                <p class="f14px grey">
                  <asp:Literal ID="ltlContent" runat="server"></asp:Literal>
                </p>
                <p class="hack8px"> </p>
                <p> <span class="more c8b">
                  <asp:Literal ID="ltlAnswerDate" runat="server"></asp:Literal>
                  </span><span class="more orange b">回答者：
                  <asp:Literal ID="ltlAnswerUserName" runat="server"></asp:Literal>
                  </span> </p>
                <p class="hack8px"> </p>
                <p>
                  <asp:Literal ID="ltlVote" runat="server" Visible="false"></asp:Literal>
                  <asp:Literal ID="ltlSetBest" runat="server" Visible="false"></asp:Literal>
                  <asp:Literal ID="ltlEditAnswer" runat="server"></asp:Literal>
                </p>
                <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                <p class="hack8px"> </p>
                <p class="line_part" style="width: 100%;"> </p>
                <p class="hack8px"> </p>
              </ItemTemplate>
            </asp:Repeater>
            <%-- <p class="line_top" style="width: 100%;">
                        </p>--%>
            <asp:PlaceHolder ID="phVoteResults" runat="server">
              <p class="hack8px"> </p>
              <p class="f14px orange b">
                <asp:Literal ID="ltlVoteResults" runat="server"></asp:Literal>
              </p>
              <asp:Literal ID="ltlLoginVote" runat="server"></asp:Literal>
              <p class="hack8px"> </p>
            </asp:PlaceHolder>
          </div>
        </div>
        <div class="shadow"> </div>
        <div class="hack3px"> </div>
        <asp:PlaceHolder ID="phAnswerBox" runat="server">
        <a id="answer"></a>
        <form id="answerForm" name="answerForm" action="ajax/form.aspx?action=addAnswer&qid=<%=QuestionID%>" method="post">
          <div class="box_con2 black ln22" style="width: 670px;">
            <p class="hack8px"> </p>
            <p class="f14px c61bd b"> <img src="../ask/images/icon_answ.gif" width="14" height="14" /> 我来回答：</p>
            <div style="padding:15px;">
              <textarea id="reply" name="reply" cols="100" rows="8" style="width:630px;height:180px;visibility:hidden;"></textarea>
              <p> 回答字数在1000字以内</p>
            </div>
            <p class="hack8px"> </p>
            <p style="padding-left: 210px;">
              <input type="button" value="提交回答" onclick="onAddReplySubmit('<%=UserName%>');return false;" class="btn_sub" />
            </p>
          </div>
          </form>
        </asp:PlaceHolder>
      </div>
      <div class="right232"> 
        <!--公告区-->
        <ctrl:Announcements TotalNum="3" OpenWin="True" runat="server"></ctrl:Announcements>
        <!--总积分排行-->
        <ctrl:Rank runat="server"></ctrl:Rank>
        <div class="hack3px"> </div>
        <div id="ad_rightcenter" class="adv230"> </div>
        <div class="hack5px"> </div>
        <!--小贴士-->
        <ctrl:Tips runat="server"></ctrl:Tips>
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
