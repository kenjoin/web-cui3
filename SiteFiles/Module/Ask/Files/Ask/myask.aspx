<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.MyAsk" %>
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
                <a href="./" target="_self">知道首页</a> > <span class="black">我的问答</span></div>
            <div class="hack10px">
            </div>
            <div class="tab f14px">
                <div class="line_tab">
                </div>
            </div>
            <div class="hack10px">
            </div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr valign="top">
                    <td width="118" background="../ask/images/tab3_bg.gif">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="tab3">
                            <tr>
                                <td align="center" class="tab_index1">
                                    我的ASK
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="tab_index2">
                                    <asp:Literal ID="ltlOne" runat="server"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="tab_index2">
                                    <asp:Literal ID="ltlTwo" runat="server"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="tab_index2">
                                    <asp:Literal ID="ltlThree" runat="server"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="832">
                        <div class="qnbox_l4 left0px">
                            <div class="box_con user_info black ln22" style="padding: 15px;">
                                <table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td style="padding-right: 10px;">
                                            <asp:Literal ID="ltlUserInfo" runat="server"></asp:Literal>
                                        </td>
                                    </tr>
                                </table>
                                <p class="hack15px">
                                </p>
                                <p class="ttl tl1 c72bd b f14px">
                                    积分明细</p>
                                <ul class="tl1 center">
                                    <li class="b"><span class="sp sp1">总分</span><span class="sp sp1">回答得分</span><span
                                        class="sp sp1">投票得分</span><span class="sp sp1">匿名提问</span><span class="sp sp1">悬赏付出</span><span
                                            class="sp sp1">处罚付出</span></li>
                                    <li class="cad21 f14px"><span class="sp sp1">
                                        <asp:Literal ID="ltlCredits" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                            ID="ltlCreditsAnswer" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                                ID="ltlCreditVote" runat="server"></asp:Literal></span><span class="sp sp1 red"><asp:Literal
                                                    ID="ltlCreditAnonymous" runat="server"></asp:Literal></span><span
                                                    class="sp sp1 red"><asp:Literal ID="ltlCreditPay" runat="server"></asp:Literal></span><span class="sp sp1 red"><asp:Literal
                                                        ID="ltlCreditLost" runat="server"></asp:Literal></span></li>
                                </ul>
                                <p class="hack15px">
                                </p>
                                <p class="ttl tl1 c72bd b f14px">
                                    ASK明细</p>
                                <ul class="tl1 center">
                                    <li class="b"><span class="sp sp1">回答数</span><span class="sp sp1">回答被采纳</span><span
                                        class="sp sp1">提问数</span><span class="sp sp1">已解决提问</span><span class="sp sp1">解决中提问</span><span
                                            class="sp sp1">已关闭提问</span><span class="sp sp1">参与投票</span></li>
                                    <li class="cad21 f14px"><span class="sp sp1">
                                        <asp:Literal ID="ltlAnswerCounts" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                            ID="ltlAnswerAcceptCounts" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                                ID="ltlQuestionCounts" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                                    ID="ltlDealCounts" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                                        ID="ltlNotDealCounts" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                                            ID="ltlCloseCounts" runat="server"></asp:Literal></span><span class="sp sp1"><asp:Literal
                                                                ID="ltlVoteCounts" runat="server"></asp:Literal></span></li>
                                </ul>
                                <p class="hack15px">
                                </p>
                                <p class="clear">
                                </p>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <ctrl:Footer runat="server"></ctrl:Footer>
</body>
</html>
