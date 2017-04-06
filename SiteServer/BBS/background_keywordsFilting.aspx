<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundKeywordsFilting" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <bairong:Code Type="JQuery" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <script language="JavaScript" type="text/JavaScript">
        $(document).ready(function () {
            $("#tbkeywords").focus(function () {
                if ($("#tbkeywords").val() == "敏感词关键字") {
                    $("#tbkeywords").val("");
                }
            });
            $("#tbkeywords").blur(function () {
                if ($("#tbkeywords").val() == "") {
                    $("#tbkeywords").val("敏感词关键字");
                }
            });
        });
        function checkstate(frm, state) {
            frm = eval(frm);
            var a = 0;
            var messon = "确定要" + state + "所选中的问题吗？";
            var messoff = "您还没有选择操作的对象！";
            for (var i = 0; i < frm.length; i++) {
                var cb = frm.elements[i];
                if (cb.value == "on") {
                    if (cb.checked) { a = a + 1; }
                }
            }
            if (a == 0) { alert(messoff); return false; }
            else {
                if (confirm(messon))
                { return true; }
                else { return false; }
            }
            return true;
        }
    </script>
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
            <span>搜索敏感贴</span>
        </div>
        <div style="height: 40px">
            <asp:DropDownList ID="ddlGrade" runat="server" Style="float: left; margin-left: 15px;
                margin-top: 10px">
                <asp:ListItem Selected="True" Text="所有级别" Value="0"></asp:ListItem>
                <asp:ListItem Text="禁用" Value="1"></asp:ListItem>
                <asp:ListItem Text="审核" Value="2"></asp:ListItem>
                <asp:ListItem Text="替换" Value="3"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlCategory" runat="server" Style="float: left; margin-left: 5px;
                margin-top: 10px">
            </asp:DropDownList>
            <asp:TextBox ID="tbkeywords" runat="server" MaxLength="50" Text="敏感词关键字" Style="float: left;
                margin-left: 5px; margin-top: 10px"></asp:TextBox>
            <asp:Button ID="btnquery" runat="server" Text="搜索" Style="float: left; margin-left: 5px;
                margin-top: 10px" OnClick="btnquery_Click" />
        </div>
        <hr style="width: 98%" />
        <div>
            <a href="background_KeywordsCategory.aspx" style="float: left; margin-left: 12px;
                font-size: 14px; font-weight: bold;">分类管理 </a>
            <asp:Button ID="btnImport" runat="server" Text="导入词库" Style="float: right; margin-right: 10px" />
            <asp:Button ID="btnExport" runat="server" Text="导出词库" Style="float: right; margin-right: 10px"
                OnClick="btnExport_Click" />
            <asp:DataList ID="dlKeywordsCategory" CellSpacing="1" CellPadding="1" Width="98%"
                Align="center" border="0" runat="server" RepeatColumns="10">
                <ItemTemplate>
                    <p class="tdbg" onmouseover="this.className='tdbg-dark';" style="height: 25px;" onmouseout="this.className='tdbg';">
                        <a href="background_keywordsFilting.aspx?categoryid=<%#Eval("CategoryID") %>" style="text-decoration: none;
                            font-weight: bold">
                            <asp:Literal ID="ltlIcon" runat="server"></asp:Literal>
                            <asp:Literal ID="ltlCategoryName" runat="server"></asp:Literal></a>
                    </p>
                </ItemTemplate>
            </asp:DataList>
            <hr style="width: 98%" />
        </div>
        <asp:DataList ID="dlKeywordsFilter" ShowHeader="true" CellSpacing="1" CellPadding="1"
            Width="98%" Align="center" border="0" runat="server">
            <HeaderTemplate>
                <tr style="height: 25px;" class="summary-title">
                    <td align="center">
                        序号
                    </td>
                    <td align="center">
                        敏感词
                    </td>
                    <td align="center">
                        敏感级别
                    </td>
                    <td align="center">
                        分类
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td align="center">
                    </td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbg-dark';" style="height: 25px" onmouseout="this.className='tdbg';">
                    <td align="center" style="width: 30px;">
                        <asp:Literal ID="ltlNum" runat="server"></asp:Literal>
                        <asp:Literal ID="ltlID" runat="server" Visible="false"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlName" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Label ID="lblGrade" runat="server"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlCategory" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlEdit" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 80px;">
                        <a href="background_keywordsFilting.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID")%>&Delete=True"
                            onclick="javascript:return confirm('此操作将删除敏感词“<%# DataBinder.Eval(Container.DataItem,"Name")%>”，确认吗？');">
                            删除</a>
                    </td>
                    <td align="center" style="width: 50px;">
                        <asp:CheckBox ID="chk_ID" runat="server" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:DataList>
        <bairong:SqlPager ID="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server"
            Width="100%" CellSpacing="0" border="0" class="summary-title">
        </bairong:SqlPager>
        <div style="text-align: left; padding-left: 15px;">
            <asp:Button ID="btnAdd" CssClass="button" runat="server" Text="添 加" />
            <asp:Button ID="btnDelAll" CssClass="button" runat="server" Text="删除" OnClick="btnDelAll_Click" />
        </div>
    </div>
    </form>
</body>
</html>
