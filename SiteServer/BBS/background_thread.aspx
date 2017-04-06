<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundThread" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <bairong:Code Type="JQuery" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <script language="JavaScript" type="text/JavaScript">
        $(document).ready(function () {
            $("#txtUserName").focus(function () {
                if ($("#txtUserName").val() == "请输入用户名") {
                    $("#txtUserName").val("");
                }
            });
            $("#txtUserName").blur(function () {
                if ($("#txtUserName").val() == "") {
                    $("#txtUserName").val("请输入用户名");
                }
            });
            $("#txtTitle").focus(function () {
                if ($("#txtTitle").val() == "输入标题关键字") {
                    $("#txtTitle").val("");
                }
            });
            $("#txtTitle").blur(function () {
                if ($("#txtTitle").val() == "") {
                    $("#txtTitle").val("输入标题关键字");
                }
            });
        });
    </script>
</head>
<body>
    <user:Custom Type="showpopwin" runat="server" />
    <form id="myform" runat="server">
    <bairong:Message runat="server" />
    <div class="column">
        <div class="columntitle">
            主题帖搜索</div>
        <div align="left" style="margin-left: 20px;">
            用户名：<asp:TextBox class="colorblur" ID="txtUserName" MaxLength="50" size="30" runat="server" />
            标题：<asp:TextBox class="colorblur" ID="txtTitle" MaxLength="255" Size="45" runat="server" />
            板块：<asp:DropDownList ID="ddlForum" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick"
                runat="server">
            </asp:DropDownList>
            <br />
            发布日期：从<bairong:DateTimeTextBox ID="DateFrom" class="colorblur" Columns="12" runat="server" />至
            <bairong:DateTimeTextBox ID="DateTo" class="colorblur" Columns="12" runat="server" />
            <asp:Button class="button" OnClick="Search_OnClick" ID="btnSearch" Text="搜 索" runat="server"
                Style="margin-bottom: 0px" /></div>
    </div>
    <div class="column">
        <div class="columntitle">
            论坛主题管理 -- <b>主题列表</b>（共<asp:Literal ID="ltlCounts" runat="server"></asp:Literal>项）</div>
        <asp:DataList ID="dlThreadList" ShowHeader="true" CellSpacing="1" CellPadding="1"
            Width="100%" Align="center" border="0" runat="server">
            <HeaderTemplate>
                <tr style="height: 25px;" class="summary-title">
                    <td align="center">
                        编号
                    </td>
                    <td align="center">
                        标题
                    </td>
                    <td align="center">
                        版块
                    </td>
                    <td align="center">
                        作者
                    </td>
                    <td align="center">
                        回复
                    </td>
                    <td align="center">
                        浏览
                    </td>
                    <td align="center">
                        最后发表
                    </td>
                    <td>
                    </td>
                    <td align="center">
                        <input type="checkbox" onclick="_checkFormAll(this.checked)">
                    </td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbg-dark';" style="height: 25px" onmouseout="this.className='tdbg';">
                    <td align="center" style="width: 30px;">
                        <asp:Literal ID="ltlThreadID" runat="server"></asp:Literal>
                    </td>
                    <td align="left">
                        <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlForumName" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlReplies" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlHits" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlLastDate" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 80px;">
                        <asp:Literal ID="ltlEdit" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 50px;">
                        <asp:Literal ID="ltlCheckBox" runat="server"></asp:Literal>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:DataList>
        <bairong:SqlPager ID="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server"
            Width="100%" CellSpacing="0" border="0" class="summary-title">
        </bairong:SqlPager>
    </div>
    <div style="text-align: left; padding-left: 27px;">
        <asp:Button ID="btnTranslate" CssClass="button" runat="server" Text="转 移" />
        <asp:Button ID="btnTop" CssClass="button" runat="server" Text="置 顶" />
        <asp:Button ID="btnDigest" CssClass="button" runat="server" Text="精 华" />
        &nbsp;<asp:Button ID="btnDelete" CssClass="button" runat="server" Text="删 除" /></div>
    </form>
</body>
</html>
