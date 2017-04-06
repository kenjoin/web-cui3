<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundSusceptivitypost" %>

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
            <a href="background_susceptivitypost.aspx" style="font-size: 12px; text-decoration: none">
                敏感贴管理</a> <a href="background_susceptivitypostpassed.aspx" style="font-size: 12px;
                    text-decoration: none; margin-left: 15px">查看已审核记录</a>
        </div>
        <asp:DataList ID="dlSusceptivityPost" ShowHeader="true" CellSpacing="1" CellPadding="1"
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
                        敏感词
                    </td>
                    <td align="center">
                        发布者
                    </td>
                    <td align="center">
                        发布时间
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
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
                        <asp:Literal ID="ltlThread" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlKeyWords" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlUser" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlTime" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlLookUp" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <a href="background_susceptivitypost.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID")%>&Pass=True"
                            onclick="javascript:return confirm('确认结果为通过吗？');">通过</a>
                    </td>
                    <td align="center" style="width: 80px;">
                        <a href="background_susceptivitypost.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID")%>&Delete=True"
                            onclick="javascript:return confirm('确认要删除吗？');">删除</a>
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
            <asp:Button ID="btnPass" CssClass="button" runat="server" Text="通过" OnClick="btnPass_Click" />
            <asp:Button ID="btnDel" CssClass="button" runat="server" Text="删除" OnClick="btnDel_Click" />
        </div>
    </div>
    </form>
</body>
</html>
