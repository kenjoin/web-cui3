<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContent" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <bairong:Code Type="JQuery" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <script language="javascript" src="../Inc/rows.js"></script>
    <script type="text/javascript">
        function init() {
            loopRows(document.getElementById('dlContents'), function (cur) { cur.onclick = chkSelect; });
        }
        window.onload = init;
    </script>
    <bairong:Code Type="fancybox" runat="server" />
</head>
<body>
    <user:Custom Type="showpopwin" runat="server" />
    <form id="myForm" style="margin: 0" runat="server">
    <bairong:Message runat="server" />
    <div class="column">
        <div class="columntitle">
            <asp:Literal ID="ltlNodeName" runat="server"></asp:Literal>
            &nbsp;<a href="http://help.siteserver.cn/manage/187.html" target="_blank"><img src="../Pic/help_bar.gif"
                alt="点击查看内容管理帮助" align="absmiddle"></a>
        </div>
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tbody>
                <tr class="summary-title" align="left">
                    <td align="left" style="padding-left: 10px;">
                        <asp:Literal ID="ltlContentButtons" runat="server"></asp:Literal>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="contentSearch" style="display: none" width="100%" border="0" align="center"
            cellpadding="0" cellspacing="0">
            <tbody>
                <tr class="summary-title" align="left">
                    <td align="left" style="padding-left: 10px;">
                        根据添加日期排序:<asp:DropDownList ID="TaxisByAddDate" runat="server" AutoPostBack="true"
                            OnSelectedIndexChanged="Search_OnClick">
                            <asp:ListItem Selected="True" Text="请选择" Value=""></asp:ListItem>
                            <asp:ListItem Text="正序" Value="0"></asp:ListItem>
                            <asp:ListItem Text="倒序" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="left" style="padding-left: 40px;">
                        时间从：
                        <bairong:DateTimeTextBox ID="DateFrom" class="colorblur" Columns="12" runat="server" />
                        目标：
                        <asp:DropDownList ID="SearchType" runat="server">
                        </asp:DropDownList>
                        关键字：
                        <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                            ID="Keyword" MaxLength="500" Size="40" runat="server" />
                        <asp:Button class="button" OnClick="Search_OnClick" Style="margin-bottom: 0px" ID="Search"
                            Text="搜 索" runat="server" />
                    </td>
                </tr>
            </tbody>
        </table>
        <asp:DataList ID="dlContents" ShowHeader="true" CellSpacing="1" CellPadding="1" Width="100%"
            Align="center" runat="server">
            <HeaderTemplate>
                <tr class="summary-title" style="height: 25px;">
                    <td>
                        &nbsp;内容标题(点击查看)
                    </td>
                    <asp:Literal ID="ltlColumnHeadRows" runat="server"></asp:Literal>
                    <td align="Center" style="width: 50px;">
                        状态
                    </td>
                    <td align="Center" style="width: 30px;">
                        &nbsp;
                    </td>
                    <asp:Literal ID="ltlCommandHeadRow" runat="server"></asp:Literal>
                    <td align="Center" style="width: 20px;">
                        <input type="checkbox" onclick="_checkAll(document.getElementById('<%=dlContents.ClientID%>'),this.checked);">
                    </td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" style="height: 25px;">
                    <td>
                        &nbsp;
                        <asp:Literal ID="ltlItemTitle" runat="server"></asp:Literal>
                    </td>
                    <asp:Literal ID="ltlColumnItemRows" runat="server"></asp:Literal>
                    <td align="Center" style="width: 50px;">
                        <nobr><asp:Literal ID="ltlItemStatus" runat="server"></asp:Literal></nobr>
                    </td>
                    <td align="Center" style="width: 30px;">
                        <asp:Literal ID="ltlItemEditUrl" runat="server"></asp:Literal>
                    </td>
                    <asp:Literal ID="ltlCommandItemRow" runat="server"></asp:Literal>
                    <td align="Center" style="width: 20px;">
                        <input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' />
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
