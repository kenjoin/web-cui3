<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundKeywordsCategory" %>

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
        <div style="background-color: #C0D3E9; width: 100%; float: left; margin-top: 10px">
            <span style="font-size: 13px; font-weight: bold; float: left; margin-top: 5px; margin-left: 5px">
                当前共有</span><asp:Label Style="font-size: 13px; font-weight: bold; float: left; margin-top: 5px"
                    ID="lblCategoryCount" runat="server"></asp:Label><span style="font-size: 13px; font-weight: bold;
                        float: left; margin-top: 5px">个分类</span>
            <asp:Button ID="btnAddCategory" CssClass="button" runat="server" Text="添 加" Style="float: right;
                margin-top: 5px; margin-right: 5px" />
        </div>
        <asp:DataList ID="dlCategory" ShowHeader="true" CellSpacing="1" CellPadding="1" Width="100%"
            Align="center" border="0" runat="server">
            <HeaderTemplate>
                <tr style="height: 25px;" class="summary-title">
                    <td align="center">
                        序号
                    </td>
                    <td align="center">
                        名称
                    </td>
                    <td align="center">
                        词库数量
                    </td>
                    <td align="center">
                        是否开启
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
                        <asp:Literal ID="ltlCategoryID" runat="server" Visible="false"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlName" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlCount" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlisOpen" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlEdit" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 80px;">
                        <a href="background_KeywordsCategory.aspx?CategoryID=<%# DataBinder.Eval(Container.DataItem,"CategoryID")%>&Delete=True"
                            onclick="javascript:return confirm('此操作将删除分类“<%# DataBinder.Eval(Container.DataItem,"CategoryName")%>”，确认吗？');">
                            删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
