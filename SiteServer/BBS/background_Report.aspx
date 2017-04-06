<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundReport" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <user:Custom ID="Custom1" Type="style" runat="server" />
    <link href="../style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<user:custom ID="Custom2" type="showpopwin" runat="server" />
    <form id="form1" runat="server">
    <bairong:Message ID="Message1" runat="server"></bairong:Message>
   <div class="column">
        <div class="columntitle">
           用户举报管理 -- <b>举报列表</b>（共<asp:Literal ID="ltlCounts" runat="server"></asp:Literal>项）</div>
        <asp:DataList ID="dlReportList" ShowHeader="true" CellSpacing="1" CellPadding="1"
            Width="100%" Align="center" border="0" runat="server">
            <HeaderTemplate>
                <tr style="height: 25px;" class="summary-title">
                    <td align="center">编号</td>
                    <td align="center">内容</td>
                    <td align="center">版块</td>
                   <td align="center">帖子</td>
                    <td align="center">投诉人</td>
                  <td align="center">投诉日期</td>
                    <td></td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="height: 25px" onMouseOut="this.className='tdbg';">
                    <td align="center" style="width: 30px;"> 
                        <asp:Literal ID="ltlReportID" runat="server"></asp:Literal>
                    </td>
                    <td align="left">
                        <asp:Literal ID="ltlContent" runat="server"></asp:Literal>
                    </td>
                    <td align="center" >
                        <asp:Literal ID="ltlForumName" runat="server"></asp:Literal>
                    </td>
                <td align="center" >
                        <asp:Literal ID="ltlPost" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
                    </td>
                    <td align="center">
                        <asp:Literal ID="ltlDatetime" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 80px;">
                        <asp:Literal ID="ltlDel" runat="server"></asp:Literal>
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
