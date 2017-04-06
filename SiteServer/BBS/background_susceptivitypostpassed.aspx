<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundSusceptivityPostPassed" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <bairong:Code Type="JQuery" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
    <user:Custom Type="showpopwin" runat="server" />
    <form id="myform" runat="server">
    <bairong:Message runat="server" />
    <div class="column">
        <div class="columntitle">
            <a href="background_susceptivitypost.aspx">敏感贴审核</a>&nbsp;&nbsp;&nbsp;<a href="background_keywordsFilting.aspx">词库管理</a>
        </div>
        <div class="columntitle" style="margin-top: 10px">
            <a href="background_susceptivitypost.aspx" style="font-size: 12px; text-decoration: none">
                敏感贴管理</a> <a href="background_susceptivitypostpassed.aspx" style="font-size: 12px;
                    text-decoration: none; margin-left: 15px">查看已审核记录</a>
        </div>
        <asp:DataList ID="dlSusceptivityPostPassed" ShowHeader="true" CellSpacing="1" CellPadding="1"
            Width="98%" Align="center" border="0" runat="server">
            <HeaderTemplate>
                <tr style="height: 25px;" class="summary-title">
                    <td align="center">
                        序号
                    </td>
                    <td align="center">
                        主题
                    </td>
                    <td align="center">
                        发布者
                    </td>
                    <td align="center">
                        审核状态
                    </td>
                    <td align="center">
                        审核员
                    </td>
                    <td>
                        操作时间
                    </td>
                    <td>
                    </td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbg-dark';" style="height: 25px" onmouseout="this.className='tdbg';">
                    <td align="center" style="width: 30px;">
                        <asp:Literal ID="ltlNum" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlThread" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlUser" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        审核通过
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlAssessor" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlTime" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltlLookUp" runat="server"></asp:Literal>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:DataList>
        <bairong:SqlPager ID="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server"
            Width="100%" CellSpacing="0" border="0" class="summary-title">
        </bairong:SqlPager>
    </div>
    </form>
</body>
</html>
