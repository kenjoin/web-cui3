<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundChannelsGroup" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <bairong:Code Type="JQuery" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <script type="text/javascript" language="javascript" src="../Inc/rows.js"></script>
</head>
<body>
    <user:Custom Type="showpopwin" runat="server" />
    <form id="myForm" style="margin: 0" runat="server">
    <div class="column">
        <div class="columntitle">
            <asp:Literal ID="ltlChannelGroupName" runat="server"></asp:Literal>
        </div>
        <asp:DataList ID="dlChannels" ShowHeader="true" CellSpacing="1" CellPadding="1" Width="100%"
            Align="center" runat="server">
            <HeaderTemplate>
                <tr class="summary-title" style="height: 25px;">
                    <td>
                        &nbsp;栏目名
                    </td>
                    <td align="center" style="width: 250px;">
                        栏目索引
                    </td>
                    <td align="center" style="width: 100px;">
                        添加日期
                    </td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" style="height: 25px;">
                    <td>
                        &nbsp;
                        <asp:Literal ID="ltlItemChannelName" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 150px;">
                        <asp:Literal ID="ltlItemChannelIndex" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 150px;">
                        <asp:Literal ID="ltlItemAddDate" runat="server"></asp:Literal>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:DataList>
        <table width="95%" align="center">
            <tr>
                <td align="right">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td>
                                <bairong:SqlPager ID="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server"
                                    Width="100%" CellSpacing="0">
                                </bairong:SqlPager>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
