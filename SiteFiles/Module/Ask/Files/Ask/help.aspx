<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Help" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<ctrl:Theme runat="server"></ctrl:Theme>
</head>

<body>
<ctrl:Header runat="server"></ctrl:Header>
<div class="main">
  <div class="hack10px"> </div>
  <div class="box950">
    <div class="c72bd"> <a href="./" target="_self">知道首页</a> > <span class="black">帮助中心</span></div>
    <div class="hack10px"> </div>
    <div class="left212">
      <div class="qnbox_l1 help f14px"> <a id="top" name="top"></a><strong class="white">使用帮助</strong>
        <p class="shadow"> </p>
        <ul class="c61bd noline">
          <li class="top0px"> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#1" target="_self">如何提问</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#2" target="_self">如何回答</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#3" target="_self">如何处理问题</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#4" target="_self">问题为何被关闭</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#5" target="_self">提问过期了如何处理</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#6" target="_self">如何获得积分和经验</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#7" target="_self">个人问答管理</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#8" target="_self">如何避免问答被删</a></li>
          <li> <img height="7" src="../ask/images/icon_arrow.gif" width="4"> <a href="#9" target="_self">系统使用原则</a></li>
        </ul>
        <p class="clear"> </p>
        <p class="hack5px"> </p>
      </div>
      <div class="shadow"> </div>
    </div>
    <div class="right738">
      <div class="qnbox_l2 f14px"> <strong class="c61bd"><a class="c61bd" href="">帮助中心</a></strong>
        <p class="shadow"> </p>
        <p class="hack8px"> </p>
        <p class="hack8px"> </p>
        <p class="box_con orange" style="font-weight: bold; width: 680px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您使用<%=GetProductName()%>，您只需要花二分钟注册一个账号，就可享受我们的完整服务进行各项操作，否则您只有搜索和浏览的权限。注册成为“<%=GetProductName()%>”的用户，是完全免费的。赶快开始您“<%=GetProductName()%> 之旅”吧。</p>
        <p class="hack8px"> </p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> <a id="1" name="1"></a>如何提问</p>
        <ul class="upp ln22">
          <li><b>第一步：在输入框输入提问</b>
            <p> 在每个页面的顶端都可以看到与搜索框并在一起的“我要提问”按钮，输入框中输入您的问题标题，然后点击“我要提问”。例如输入标题“想购买2000元左右手机，请问买什么牌子的好？”，并点击“我要提问”。</p>
          </li>
          <li><b>第二步：浏览系统匹配的问题，看是否能解决您的需求</b>
            <p> 提交标题之后，<%=GetProductName()%>会智能检索相近的问题显示在问题提问页的上面，这里您可以浏览是否有您需要的内容，能否解决您的需求，如果可以那么可以节约您大量的时间。如果匹配的内容还不能解决您的问题，那请继续第三步。</p>
          </li>
          <li><b>第三步：填写问题详细信息</b>
            <p> 填写详细的问题信息，可以更好地表达您的本意，同时也让网友能为您的问题对症下药。喝一杯茶回来，就可以看到热心网友、专家团已解答您的问题了。</p>
          </li>
        </ul>
        <p class="box_con c8b ln22" style="width: 680px"> 注意：请注意您的提问不要违背“<span class="orange">系统使用原则</span>”的内容，否则提问将被编辑删除，并扣除
          <asp:Literal
                                ID="ltlQuestionBeDeleted" runat="server"></asp:Literal>
          分，情节严重者，“<%=GetProductName()%>”有权对其做出关闭部分权限、暂停直接删除其帐号等处罚。</p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">填写提问细节并悬赏</span></p>
        <ul class="upp ln22">
          <li><b>详细说明问题：</b>
            <p> 您可以详细描述您所遇到的难题，以得到网友最好最有针对性的回答。</p>
          </li>
          <li><b>设置问题分类：</b>
            <p> 请您切记为您的问题选择一个最恰当的分类，因为只有这样，您的问题才能在第一时间内得到正确解答。我们的系统会对您的提问进行自动分析并进行分类，但是很可能您对我们的分类并不满意，您可以在此修改已有的分类。</p>
          </li>
          <li><b>设置悬赏分：</b>
            <p> 设置悬赏分，可以让您的问题得到更多的关注，当然悬赏分越高，受关注度也越高。请您注意，当提交问题时悬赏分便将从您的积分中扣除，并当您选择了最佳答案后，赠送给最佳答案的回答者，若然问题无最佳答案，所扣队积分也不返还。</p>
          </li>
          <li><b>设定匿名：</b>
            <p> 当某些提问属于您的个人隐私，您可以设定匿名提问，这样，您的用户名便不会出现在问题页面上，取而代之的将会是“匿名”二字。如果您选择了“匿名”提问，将会在您的积分中扣除
              <asp:Literal
                                        ID="ltlQuestionAnonymous" runat="server"></asp:Literal>
              个积分。</p>
          </li>
        </ul>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="2" name="2"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 如何回答</p>
        <ul class="upp ln22">
          <li><b>A: </b>浏览问题页面时，您可以直接进行回答； 对一个问题，您只能回答一次；在问题转入已解决状态前，您可以修改您的回答。<br />
            <br />
            <b> B:</b> 如果您的回答内容参照了其他书籍,网页等他人文章,请务必标明出处；如有知识产权等纠纷, 需回答者本人承担相应法律责任。<br />
            <br />
            查看您的回答，有如下途径：
            <p> 1. 到个人中心的“我的回答”进行查看，这是比较方便快捷的方法</p>
            <p>2. 到您回答的问题所在的分类浏览查找 </p>
            <p>3. 在页面顶端的搜索框输入您回答的问题的标题，或您的回答中包含的关键词，进行搜索</p>
          </li>
        </ul>
        <p class="box_con c8b ln22" style="width: 680px"> 注意：请注意您的回答不要违背“<span class="orange">系统使用原则</span>”的内容，否则回答将被编辑删除，并扣除
          <asp:Literal
                                ID="ltlAnswerBeDeleted" runat="server"></asp:Literal>
          分，情节严重者，“<%=GetProductName()%>”有权对其做出关闭部分权限、暂停直接删除其帐号等处罚。</p>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="3" name="3"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 如何处理问题</p>
        <p class="box_con ln22" style="width: 680px"> 提问后，请您切记在15天内处理您的问题，否则将辜负回答您问题的热心网友，作为惩罚，我们会扣除您
          <asp:Literal ID="ltlNotDeal" runat="server"></asp:Literal>
          分积分，您可以有如下选择： </p>
        <ul class="upp ln22">
          <li><b>采纳答案：</b>选择一个您最满意的回答为最佳答案，结束提问。
            <p> 1. 被采纳的回答就被您选为问题的答案；这时问题的状态变为“已解决”，形成“ASK”的确定的结果；<br>
              2. 被采纳的回答者可获得20分系统奖励和您悬赏出去的积分。<br>
              3. 您采纳回答时，可对答案发表评价，当您想对回答者表示更多的感谢，可以追加悬赏分。 </p>
          </li>
          <li><b>问题补充：</b>可以对您的提问补充细节，以得到更准确的答案。</li>
          <li><b>提高悬赏：</b>提高悬赏分，以提高问题的关注度，此时：
            <p> 1. 系统自动延长该问题的有效期 3 天；<br>
              2. 如果您一次追加悬赏 20 分以上（含 20 分），系统会将问题在所在分类的“待解决问题”列表中显示为最新，类似于新提出的问题。 </p>
          </li>
          <li><b>发起投票：</b>不知道哪个回答最好时，可让网友投票来选出最佳答案。您可以选择将回答转为投票， 当投票时间达到5天，投票自动结束，此时：
            <p> 1. 投票数最高的回答选为最佳答案<br>
              2. 无人投票，问题将被自动关闭<br>
              3. 过期未处理自动转投票问题的投票页的“查看投票结果”。<br>
              4. 当投票数出现并列第一的时候，问题将被自动关闭 </p>
          </li>
          <li><b>无满意回答：</b>当您觉得没有满意的回答，还可直接结束提问，关闭问题。</li>
        </ul>
        <p class="box_con c8b ln22" style="width: 680px"> 注意：我们提醒您注意，如果您选择了“<span class="orange">无满意回答</span>”操作，出于保护回答者利益的考虑，问题的悬赏分将不再返还。如果因此造成您的积分损失，我们希望能得到您的理解。</p>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="4" name="4"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 问题为何被关闭</p>
        <ul class="upp ln22">
          <li><b>问题在以下的各二种情况下都会被关闭：</b>
            <p> 1)如果提问者在15天内没有处理问题（选择最佳答案、通过提高悬赏延期问题有效时间、设置投票和选择无满意答案），而该问题的回答少于等于三个且最长回答不超过30字，则问题会过期并被系统自动关闭。<br>
              2)当投票时间达到5天，投票自动结束，此时，投票的问题若无人投票，问题将被自动关闭；当投票数出现并列第一的时候，问题将被自动关闭。<br>
              3)如果提问者对某问题选择无满意答案，则该问题被系统自动关闭。 </p>
          </li>
        </ul>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="5" name="5"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 提问过期了如何处理</p>
        <p class="box_con box_txt" style="width: 680px"> 如果提问者在15天内没有处理您的问题（指选择最佳答案、通过提高悬赏延期问题有效时间、设置投票和选择无满意答案等操作），且该问题有一个或以上的回答，并不满足自动关闭条件，则问题会过期。对于有2个或以上回答的过期问题，会自动转入投票，对于只有一个回答的过期问题，会自动进入“已解决”状态。 </p>
        <ul class="upp ln22">
          <li><b>将问题转入投票：</b>
            <p> 这时会扣除提问者20分积分，投票选出最佳答案时返还提问者10分积分。如果投票未能选出最佳答案，则该过期问题仍然需要提问者来处理。</p>
          </li>
          <li><b>选择无满意答案：</b>
            <p> 这是用户手动关闭此过期的问题。</p>
          </li>
        </ul>
        <p class="box_con c8b ln22" style="width: 680px"> 注意：您每处理一个过期问题，就可以得到系统返还的10分积分。只要您还有过期问题未处理，您就无法在“<%=GetProductName()%>”进行新的提问。</p>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="6" name="6"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 如何获得积分和经验</p>
        <p class="box_con box_txt" style="width: 680px"> “<%=GetProductName()%>”里的积分就像游戏里的积分，您会付出积分，也会获得积分。您在ASK进行的提问、回答、投票、评论时都可所获得的积分。积分可以在提问时用来悬赏，您也会随着积分增加而晋级并获得更高的头衔。 </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">1.积分增加:</span>
        
        <div style="padding-left:20px;">
          <table cellspacing="1" cellpadding="4" width="96%" align="center" bgcolor="#cccccc">
            <tbody>
              <tr>
                <td height="25" colspan="4" align="middle" bgcolor="#1E91CD"><font color="#ffffff"><b>&nbsp;积分增加</b></font></td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff"><b><font color="#ffffff"><b>&nbsp;</b></font>操作</b></td>
                <td width="106" height="25" bgcolor="#ffffff"><b><font color="#ffffff"><b>&nbsp;</b></font>积分</b></td>
                <td width="377" height="25" bgcolor="#ffffff"><b><font color="#ffffff"><b>&nbsp;</b></font>说明</b></td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff">&nbsp;第一次登录 </td>
                <td width="106" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditInitial" runat="server"></asp:Literal></td>
                <td width="377" height="25" bgcolor="#ffffff">&nbsp;完成<%=GetProductName()%>激活 </td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff">&nbsp;每日登录 </td>
                <td width="106" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditLogin" runat="server"></asp:Literal></td>
                <td width="377" height="25" bgcolor="#ffffff">&nbsp;每天登录获得的积分&nbsp; </td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff">&nbsp;回答问题 </td>
                <td width="106" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditAnswer" runat="server"></asp:Literal></td>
                <td width="377" height="25" bgcolor="#ffffff">&nbsp;对现有问题进行回答,积分增加
                  <p> </p></td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff">&nbsp;被采纳 </td>
                <td width="106" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditAnswerAccept" runat="server"></asp:Literal>
                  &nbsp;+悬赏分 </td>
                <td width="377" height="25" bgcolor="#ffffff">&nbsp;回答被提问者采纳为最佳答案,或经投票被选为最佳答案积分增加 </td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff">&nbsp;投票 </td>
                <td width="106" height="25" bgcolor="#ffffff">&nbsp;+1 </td>
                <td width="377" height="25" bgcolor="#ffffff">&nbsp;每日限投票10次 </td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff">&nbsp;评论 </td>
                <td width="106" height="25" bgcolor="#ffffff">&nbsp;+1 </td>
                <td width="377" height="25" bgcolor="#ffffff">&nbsp;普通用户针对最佳答案进行评论进行加分操作 </td>
              </tr>
              <tr>
                <td width="156" height="25" bgcolor="#ffffff">&nbsp;处理过期问题 </td>
                <td width="106" height="25" bgcolor="#ffffff">&nbsp;+10 </td>
                <td width="377" height="25" bgcolor="#ffffff">&nbsp;过期的问题进行处理,可以返回10个积分 </td>
              </tr>
            </tbody>
          </table>
        </div>
        </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">2.积分减少:</span>
        
        <div style="padding-left:20px">
          <table cellspacing="1" cellpadding="4" width="96%" align="center" bgcolor="#cccccc">
            <tbody>
              <tr>
                <td height="25" colspan="4" align="middle" bgcolor="#1E91CD"><b><font color="#ffffff">&nbsp;积分减少</font></b></td>
              </tr>
              <tr>
                <td width="161" height="25" bgcolor="#ffffff"><b>&nbsp;操作</b></td>
                <td width="101" height="25" bgcolor="#ffffff"><b>&nbsp;积分</b></td>
                <td width="391" height="25" bgcolor="#ffffff"><b>&nbsp;说明</b></td>
              </tr>
              <tr>
                <td width="161" height="25" bgcolor="#ffffff">&nbsp;提问 </td>
                <td width="101" height="25" bgcolor="#ffffff">&nbsp;-悬赏分 </td>
                <td width="391" height="25" bgcolor="#ffffff">&nbsp;提出问题,用户可以选择悬赏的分数,可悬赏的分数的高低受限于用户的总积分数 </td>
              </tr>
              <tr>
                <td width="161" height="25" bgcolor="#ffffff">&nbsp;匿名提问 </td>
                <td width="101" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditQuestionAnonymous" runat="server"></asp:Literal></td>
                <td width="391" height="25" bgcolor="#ffffff">&nbsp;用户提问后为了隐藏自己身分 </td>
              </tr>
              <tr>
                <td width="161" height="25" bgcolor="#ffffff">&nbsp;15天不处理 </td>
                <td width="101" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditNotDeal" runat="server"></asp:Literal></td>
                <td width="391" height="25" bgcolor="#ffffff">&nbsp;所提问的问题在期限内还没有选出最佳答案或者没有主动结束提问,视为不处理 </td>
              </tr>
              <tr>
                <td width="161" height="25" bgcolor="#ffffff">&nbsp;回答被删除 </td>
                <td width="101" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditAnswerBeDeleted" runat="server"></asp:Literal></td>
                <td width="391" height="25" bgcolor="#ffffff">&nbsp;回答违规被删除 </td>
              </tr>
              <tr>
                <td width="161" height="25" bgcolor="#ffffff">&nbsp;提问被删除 </td>
                <td width="101" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditQuestionBeDeleted" runat="server"></asp:Literal></td>
                <td width="391" height="25" bgcolor="#ffffff">&nbsp;提问违规被删除 </td>
              </tr>
              <tr>
                <td width="161" height="25" bgcolor="#ffffff">&nbsp;评论被删除 </td>
                <td width="101" height="25" bgcolor="#ffffff">&nbsp;
                  <asp:Literal ID="ltlCreditCommentBeDeleted" runat="server"></asp:Literal></td>
                <td width="391" height="25" bgcolor="#ffffff">&nbsp;评论违规被删除 </td>
              </tr>
            </tbody>
          </table>
        </div>
        </p>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="7" name="7"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 个人问答管理</p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">1.我的<%=GetProductName()%></span><br>
          您可以在“我的回答”下查看“积分明细、经验明细、回答明细、恶名值”等信息，将您在<%=GetProductName()%>里的活动回报、处罚一一展现。</p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">2.我的提问</span><br>
          这里显示您所有的提问问题，各式的标识表示问题的状态，您也可以通过按不同的状态筛选查看问题，点击问题标题，就可以去到问题详细页面。<br>
          在提问者个人中心的“我的提问”下“过期提问”中会将这些有回答的过期问题单独列出，您可以继续处理这些问题（选择最佳答案和选择无满意答案）。 </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">3.我的回答</span><br>
          这里显示您所有的回答，各式的标识表示问题的状态，您筛选“全部回答”或“被采纳回答”进行查看，点击问题标题，就可以去到问题详细页面。 </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">4.我的投票</span><br>
          这里显示您所有参与过的投票，包括您发起的和您参加的。各式的标识表示问题的状态，点击问题标题，就可以去到问题详细页面。 </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">5.短信息</span><br>
          您会发现，与朋友沟通、接受系统信息最多的是采用短信息来进行的，这里您可以撰写信件、查看收件箱与发件箱，您还可以设置黑名单，防止不必要的搔扰。 </p>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="8" name="8"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 如何避免问答被删</p>
        <p class="box_con box_txt" style="width: 680px"> 要避免问答、评论被删除，请注意您的提问、回答或评论不违反“<%=GetProductName()%>协议”，凡文章出现以下情况之一，“<%=GetProductName()%>”管理人员有权不提前通知用户直接删除，并依照有关规定作相应处罚，情节严重者，“<%=GetProductName()%>”有权对其做出关闭部分权限、暂停直至删除其帐号的处罚。 </p>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a><a id="9" name="9"></a></p>
        <p class="hack8px"> </p>
        <p class="ttl ttl1 orange b" style="width: 710px"> 系统使用原则</p>
        <p class="box_con ln22" style="width: 680px"> 欢迎光临<%=GetProductName()%>，请您仔细阅读以下条款，如果您对本协议的任何条款表示异议，您可以选择不进入<%=GetProductName()%>，您进入<%=GetProductName()%>，则意味着您将自愿遵守以下规则，并完全服从于<%=GetProductName()%>的统一管理。</p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">1.“<%=GetProductName()%>”入门</span><br>
          1)标题清晰简洁<br>
          尽量提练您的标题，不要写无意义或模糊的题目，为了别人解答时能正理解您的本意更好地解决问题，请您正确写好标题。<br>
          2)描述好具体的问题<br>
          在提问前，内容要具体详细地描述。问题内容越具体别人的答复也就越正确。 <br>
          3)请先搜索问题<br>
          在提问之前，请先对问题进行搜索，或者在提问的时候，先关注一下提问页面上“相关问题”列表，其中是否已经有过得到解决的类似问题，如果有这将是您最快获得回答的方法。 <br>
          4)选择好分类<br>
          系统在问题发起之时会自动分配分类，但是有时需要您的智慧让分类更合适，以保证提问的正确归类可以让您更快地得到满意的回答。 <br>
          5)不要忘记处理问题<br>
          在提问后的15天之内，无论有无答案最佳，请回来处理问题，以免伤害热心回答的网友。如果有答案而过期不对问题进行处理，我们将扣除您20分的积分以示惩戒，同时在问题没有处理完之前，您是无法再进行提问的。<br>
          6)互相尊重<br>
          提问者提问时的语气请尽量友好，避免给他人以责问、逼问的不良感受。回答者在答复时候也不要小看或嘲笑提问者，要有诚意地解答，正确地书写。对所有解答自己问题的会员表示感谢。选出最佳答案后也请给予回答者一些友好的评价，尊重他人的劳动成果。 </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">2.审核与处罚</span><br>
          1)作弊行为与处罚方法<br>
          <b>作弊的定义：</b>通过非公平不正当途径获取积分。对于作弊行为的判断，快公司保留最终解释权。特别注意：任何形式的自问自答，刷票，转分，送分等都属于作弊行为。<br>
          <b>作弊的处罚：</b>所有通过非正当行为获得的积分，将被全部扣除。作弊行为一经确认，涉及作弊行为的提问者的所有提问将被严肃处理，情节严重者会被删除提问。涉及该作弊行为的所有相关用户的登录帐号将被酌情扣分和有限期封禁，情节严重者会被永久封禁。<br>
          <br>
          2)问答、评论删除原则与处罚方法，<b>特别注意以下行为，将被删除</b><br>
          无意义的提问，将被删除。 <br>
          例：1+1=？<br>
          提交不构成问题的提问，将被删除。<br>
          ? 例：今天天气不错。 <br>
          征友类的问题，将被删除。 <br>
          ? 例：寻找男女朋友的，加QQ：12345678 <br>
          寻人的问题，将被删除。 <br>
          ? 例：找我失散多年的小学同学。 <br>
          提交的回答无实际意义，将被删除。 <br>
          ? 例：顶 ，同上，赞同等回答 <br>
          有交易，赠送等倾向的提问和回答，将被删除。<br>
          ??例：有人想买手机吗？ <br>
          对第三方无意义的激活码，认证码，邀请码，注册码，内测号等类似问答将被删除。<br>
          ? 例：谁能给我个GMAIL邀请码？ 我邮箱是abc@abc.com。<br>
          如果上下楼有明显抄袭的行为，那么按时间顺序后提交的回答，将被删除。 <br>
          例：求网络游戏的内测帐号和游戏帐号的问题，将被删除。<br>
          涉及少数民族的一些有歧视、误导等的提问的回答，将被删除。<br>
          如果同一用户用相同的答案，回答大量不同的问题，该用户的回答将被删除。<br>
          私服外挂类问题将被删除。<br>
          多次将个人空间地址作为参考或者回答按广告处理。 <br>
          大量使用<%=GetProductName()%>链接作为回答按灌水处理。 <br>
          没有正面回答问题，只留有QQ号按灌水处理。 <br>
          如何盗取别人QQ号或其他隐私的问题按灌水处理。 <br>
          短时间提交大量相同类型的简单提问将按灌水处理。 <br>
          企业招聘或个人求职问题按灌水处理。 <br>
          短时间内大量提问都采纳同一回答者将按作弊处理。<br>
          选择无意义回答作为最佳答案按作弊处理。 <br>
          新闻报道等摘抄类的问答，将被删除。<br>
          <br>
          3)其他问题、回答和评论的删除原则，凡符合下列任何情况的提问、回答或评论，都将被删除<br>
          <b>含有色情、暴力、恐怖内容 </b> <br>
          详细描写性器官、性行为和性心理<br>
          传播色情图片或其他色情内容<br>
          详细描写暴力行为过程和身心体验<br>
          详细描写恐怖事件和主观感受 <br>
          引诱他人见面发生性关系或卖淫<br>
          雇佣、引诱他人从事暴力活动<br>
          恐吓他人 <br>
          提供符合上述特点的链接<br>
          <b>具有广告性质</b><br>
          为了增加流量而故意引导他人到某个网站或论坛<br>
          为某盈利性的组织或个人广告 <br>
          从事任何物品（包括虚拟物品，如虚拟货币等）的交易<br>
          宣传、发展传销活动<br>
          提供符合上述特点的链接<br>
          <b>含有反动内容</b><br>
          恶意评价国家现行制度<br>
          破坏社会公共秩序<br>
          挑起民族、种族、宗教、地域等争端<br>
          恶意攻击政府机构与政府官员<br>
          宣传迷信活动和邪教组织<br>
          提供符合上述特点的链接<br>
          <b>含有人身攻击内容</b><br>
          诽谤他人，散布虚假信息<br>
          侵犯他人肖像权、隐私权等其他合法权益<br>
          用粗言秽语侮辱他人，造成身心伤害 <br>
          损害社会团体或组织的名誉<br>
          提供符合上述特点的链接<br>
          <b>含有违背伦理道德内容</b><br>
          包含违反社会公共道德的内容<br>
          宣扬颓废、消极的人生观<br>
          劝诱自杀，描写自杀方法和过程<br>
          歧视和贬低弱势群体，如残疾、老龄和经济状况较差等<br>
          教授侵犯他人权益的方法，如黑客、诈骗等 <br>
          宣传或劝诱师生恋、外遇、乱伦等违反伦常的行为<br>
          包含其他可能导致他人反感或不快内容的<br>
          提供符合上述特点的链接<br>
          <b>具有恶意、无聊和灌水性质</b><br>
          出现真实姓名（非公众人物）和提供具体联系方式的提问和回答<br>
          具有聊天、寻人、征友、评论等特点的提问<br>
          属于恶意、无聊、灌水范畴的讨论式提问<br>
          直接索取作文、论文或作业答案等类似的提问<br>
          标题和补充中提供的信息不足以构成一个问题的提问<br>
          问答或评论内容包含有严重影响网友浏览的内容或格式<br>
          短时间内多次重复的提问<br>
          恶意大量关闭有较好答案的问题<br>
          同一内容被用作多个提问的答复，且完全不针对提问<br>
          明显抄袭他人答案<br>
          没有任何意义的提问和回答<br>
          其他可判断为灌水的无价值内容<br>
          <b>涉及违法犯罪的内容</b><br>
          宣扬刑事犯罪<br>
          引诱或召集聚众赌博<br>
          宣扬行贿受贿<br>
          行骗欺诈<br>
          其他违反我国法律法规的行为<br>
          提供符合上述特点的链接 <br>
          <b>其他公司认为不恰当的情况</b></p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">3.相应处罚方法</span><br>
          1)问题被删除后，提问者的积分将被酌情扣除0到20分。<br>
          2)回复被删除后，回答者的积分将被酌情扣除0到30分。<br>
          3)评论被删除后，评论者的积分将被酌情扣除0到10分。<br>
          4)由于问题被删除而导致的回复、评论删除不单独扣分。<br>
          5)情节严重者，将酌情对其进行加倍扣分、有限期封禁和永久封禁等处罚。 </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">4.对帐号的管理原则</span><br>
          凡含有下列行为之一者，“<%=GetProductName()%>”有权删除其相应帐号，情节严重者，将酌情封禁对应IP。 1)作弊 2)广告 3)黄反 4)灌水 5)不文明 6)抄袭 7)恶意关闭问题(反复关闭有合适答案的问题的ID)
          8)模仿<%=GetProductName()%>管理人员ID，用以假冒管理人员或破坏管理人员形象 9)模仿或盗用他人ID 10)个人签名包含有严重影响网友浏览的内容或格式 11)其他扰乱<%=GetProductName()%>秩序行为的情况。 </p>
        <p class="line_part"> </p>
        <p class="box_con ln22" style="width: 680px"> <span class="black b">5.对“<%=GetProductName()%>”用户和第三方的知识产权的保护</span><br>
          “<%=GetProductName()%>”的用户不能侵犯包括他人的著作权在内的知识产权以及其他权利。一旦由于用户的相关帖子发生知识产权问题，其责任在于用户本人。 1)未得到著作者的同意对他人的著作物进行全部或部分的复制，传播，拷贝，有可能侵害到他人的著作权时，不要把相关内容复制刊登到<%=GetProductName()%>上来。
          2)<%=GetProductName()%>的用户可以对著作物进行报道，批评，教育，研究，在正当的范围内可以对其引用，但是一定要标明其出处。但是在引用的时候不允许侵犯著者的人格，这种情况即使标明出处也看作是侵犯著作权。
          3)对于用户发表到<%=GetProductName()%>上的任何内容，用户同意快在全世界范围内具有免费的、永久性的、不可撤销的、非独家的和完全再许可的权利和许可，以使用、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示此等内容（整体或部分），和/或将此等内容编入当前已知的或以后开发的其他任何形式的作品、媒体或技术中。
          4)<%=GetProductName()%>用户的言论侵犯了第三方的著作权或其他权利，第三方提出异议的时候，<%=GetProductName()%>有权删除相关的内容，提出异议者和帖子发表者之间结束解决了诉讼，协议等相关法律问题后，以此为依据，<%=GetProductName()%>在得到有关申请后可以恢复被删除的内容。
          5)用户从<%=GetProductName()%>的服务中获得的信息在没有得到事先许可的情况下，个人或提供给第三方利用复制，发送，传播等手段用于盈利目的时，将追究相关当事人的法律责任。 6)当第三方要使用<%=GetProductName()%>上的提问、回答或评论的时候一定要事先从相关用户那里得到同意后才能使用。
          7)<%=GetProductName()%>不能对用户发表的回答或评论的正确性进行保证。 </p>
        <p class="right orange" style="width: 710px"> <a href="#top" target="_self">回到顶部</a></p>
        <p class="hack8px"> </p>
      </div>
    </div>
  </div>
</div>
<ctrl:Footer runat="server"></ctrl:Footer>
</body>
</html>
