<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.Default" %>

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
<div class="box950">
            <div class="left718_1">
                <div class="midl506_1">
                    <!--推荐问题-->
                    <div class="qnbox_m1">
                        <strong class="c61bd"><a href="set-recommend.aspx" class="c61bd">推荐问题</a></strong>
                        <div class="box_con f14px" style="width: 476px; padding: 10px 0">
                            <div class="tuijian_left">
                                <div id="ad_recommendimage"></div>
                            </div>
                            <div class="tuijian_right">
                             <ul class="ln22">
                                 <asp:Repeater ID="rptRecommend" runat="server">
                                 <ItemTemplate>
                                     <li><span class=""c61bd"">
                                     &nbsp;<asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                                     </li>
                                 </ItemTemplate>
                                 </asp:Repeater>
                             </ul>
                             <p class="right orange b"><a href="set-recommend.aspx">更多>></a></p>
                          </div>
                            <div class="clear">
                            </div>
                        </div>
                        <div class="hack5px">
                        </div>
                    </div>
                    <!--今日推荐专家-->
                    <div class="hack8px">
                    </div>
                    <div id="ad_centerbanner" class="adv490"></div>
                    <div class="hack10px">
                    </div>
                    <!--全部问题-->
                    <div style="width: 490px" class="tab f14px">
                        <table border="0" cellspacing="0" cellpadding="0" width="131">
                            <tbody>
                                <tr align="center">
                                    <td class="tab_index1" width="131">
                                        <a href="list.aspx">全部问题</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="line_tab">
                        </div>
                    </div>
                    <div id="tabpage" class="qnbox_m2 top0px f14px">
                        <p class="shadow">
                        </p>
                        <p class="hack10px">
                        </p>
                        <div class="show">
                            <p class="ttl ttl1 ttcolor b">
                                <asp:Literal ID="ltlNotDealImg" runat="server"></asp:Literal>
                                待解决的问题</p>
                            <p class="hack10px">
                            </p>
                            <ul>
                                <asp:Repeater ID="rptNotDeal" runat="server">
                                <ItemTemplate>
                                    <asp:Literal ID="ltlItem" runat="server"></asp:Literal></ItemTemplate>
                                </asp:Repeater>
                            </ul>
                          
                            <p class="right ttcolor b">
                                <a href="list-NotDeal.aspx">更多>></a></p>
                            <p class="hack12px">
                            </p>
                            <p class="ttl ttl2 ttcolor b">
                                <asp:Literal ID="ltlVoteImg" runat="server"></asp:Literal>
                                投票中的问题</p>
                            <p class="hack10px">
                            </p>
                            <ul>
                                <asp:Repeater ID="rptVote" runat="server">
                                <ItemTemplate>
                                    <asp:Literal ID="ltlItem" runat="server"></asp:Literal></ItemTemplate>
                                </asp:Repeater>
                               
                            </ul>
                            <p class="right ttcolor b">
                                <a href="list-Vote.aspx">更多>></a></p>
                            <p class="hack12px">
                            </p>
                            <p class="ttl ttl2 ttcolor b">
                                <asp:Literal ID="ltlDealImg" runat="server"></asp:Literal>
                                新解决的问题</p>
                            <p class="hack10px">
                            </p>
                            <ul>
                                <asp:Repeater ID="rptDeal" runat="server">
                                <ItemTemplate>
                                    <asp:Literal ID="ltlItem" runat="server"></asp:Literal></ItemTemplate>
                                </asp:Repeater>
                             
                            </ul>
                            <p class="right ttcolor b">
                                <a href="list-Deal.aspx">更多>></a></p>
                            <p class="hack10px">
                            </p>
                        </div>
                        <p class="clear">
                        </p>
                        <p class="hack10px">
                        </p>
                        <p class="ttl ttl3">
                            <span class="black">其他问题：</span><a href="list-high.aspx">高分问题</a> - <a href="set-expired.aspx">
                                快到期问题</a></p>
                        <p class="hack10px">
                        </p>
                    </div>
                    <div class="shadow adv490">
                    </div>
                </div>
                <div class="left212_1">
                    <!--问题分类-->
                    <ctrl:Catalogs runat="server"></ctrl:Catalogs>
                    <div class="hack5px">
                    </div>
                    <div id="ad_leftbottom" class="adv230"></div>
                    <div class="hack5px">
                    </div>
                </div>
            </div>
            <div class="right232">
                <!--公告区-->
                <ctrl:Announcements TotalNum="3" OpenWin="True" runat="server"></ctrl:Announcements>
                <!--快问之星-->
                <ctrl:Weekstar runat="server"></ctrl:Weekstar>
                <div id="ad_rightcenter" class="adv230"></div>
                <div class="hack5px">
                </div>
                <!--总积分排行-->
                <ctrl:Rank runat="server"></ctrl:Rank>
                <!--小贴士-->
                <ctrl:Tips runat="server"></ctrl:Tips>
            </div>
      </div>
</div>
    <ctrl:Footer runat="server"></ctrl:Footer>
</body>
</html>
