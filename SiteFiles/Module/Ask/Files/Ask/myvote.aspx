<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.MyVote" %>

<%@ Register TagPrefix="page" Namespace="SiteServer.Ask.Controls" Assembly="SiteServer.Ask" %>
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
    <form id="myform" runat="server">
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
                            <tr>
                                <td align="center" class="tab_index1">
                                    我的投票
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="831" class="bor_cc left0px f14px">
                        <div class="box_con" style="padding: 15px;">
                            <table width="600" border="0" cellspacing="0" cellpadding="0" class="grey ln26">
                                <tr>
                                    <td>
                                        <img src="../ask/images/icon_deal.gif" width="12" height="13" />
                                        已解决问题
                                    </td>
                                    <td>
                                        <img src="../ask/images/icon_vote.gif" width="16" height="16" />
                                        由提问者发起的投票
                                    </td>
                                    <td>
                                        <img src="../ask/images/icon_vote2.gif" width="16" height="16" />
                                        问题过期自动投票
                                    </td>
                                </tr>
                            </table>
                            <p class="hack8px">
                            </p>
                            <p class="bor_b">
                            </p>
                            <p class="hack8px">
                            </p>
                            <p class="c8b ln26">
                                尊敬的用户：您可以通过投票获得<asp:Literal ID="ltlCreditVote" runat="server"></asp:Literal>个积分，感谢你的积极参与!</p>
                            <p class="hack15px">
                            </p>
                            <div class="list_com">
                                <dl class="ln29" style="width: 800px;">
                                    <dt class="grey"><span class="sp1">标题</span><span class="sp2">回答数</span><span class="sp3">状态</span><span
                                        class="sp8">提问时间</span></dt>
                                    <asp:DataList ID="dlVoteList" runat="server">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                                        </ItemTemplate>
                                    </asp:DataList>
                                   
                                </dl>
                            </div>
                            <p class="hack8px">
                            </p>
                               <div style="margin-left:auto; margin-right:auto; width:400px;">
                               	<page:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></page:sqlpager>
                               </div>
                            <p class="hack8px">
                            </p>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <ctrl:Footer runat="server"></ctrl:Footer>
    </form>
</body>
</html>
