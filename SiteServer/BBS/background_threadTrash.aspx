<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundThreadTrash" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head runat="server">
    <title>主题回收站</title>
     <meta http-equiv="content-type" content="text/html;charset=utf-8"> 
     <!--#include file="../inc/html_head.inc"-->
    <user:Custom   Type="style" runat="server" />
     <link href="../style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<user:custom  ID="Custom2" type="showpopwin" runat="server" />
    <form id="myform" runat="server">
    <bairong:Message  ID="Message1"  runat="server"></bairong:Message>
     <div class="column">
        <div class="columntitle">
            主题回收站管理 -- <b>主题列表</b>（共<asp:Literal ID="ltlCounts" runat="server"></asp:Literal>项）</div>
        <asp:DataList ID="dlThreadList" ShowHeader="true" CellSpacing="1" CellPadding="1"
            Width="100%" Align="center" border="0" runat="server">
            <HeaderTemplate>
                <tr style="height: 25px;" class="summary-title">
                    <td align="center">编号</td>
                    <td align="center">标题</td>
                    <td align="center">版块</td>
                    <td align="center">作者</td>
                    
                    <td align="center">删除时间</td>
                    <td></td>
                    <td align="center"><input type="checkbox" onClick="_checkFormAll(this.checked)"></td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="height: 25px" onMouseOut="this.className='tdbg';">
                    <td align="center" style="width: 30px;"> 
                        <asp:Literal ID="ltlThreadID" runat="server"></asp:Literal>
                    </td>
                    <td align="left">
                        <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
                    </td>
                    <td align="center" >
                        <asp:Literal ID="ltlForumName" runat="server"></asp:Literal>
                    </td>
                    <td align="center" >
                        <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
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
    <div style="text-align:left; padding-left:27px;">
        <asp:Button ID="btnRestore" CssClass="button" runat="server" Text="还原"/>
        <asp:Button ID="btnAllRestore" CssClass="button" runat="server" Text="全部还原"/> 
        <asp:Button ID="btnDelete" CssClass="button" runat="server" Text="删除"/> 
         &nbsp;<asp:Button ID="btnDeleteAll" CssClass="button" runat="server" Text="清空回收站" /></div>   
    </form>
</body>
</html>
