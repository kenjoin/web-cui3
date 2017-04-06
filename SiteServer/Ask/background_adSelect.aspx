<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundAdSelect" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>

<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
<DIV class="column">
  <div class="columntitle">广告列表</div>
  <div class="tips">在此选择进入对应的广告类型后可添加、修改及删除对应广告</div>

<asp:DataList ID="MyDataList" RepeatColumns="4" ItemStyle-Width="25%" CellSpacing="2" CellPadding="2" Width="100%"
    Align="center" border="0" runat="server">
    <ItemTemplate>
        <table width="100%" cellpadding="3" cellspacing="0">
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td align="center" style="line-height:30px;">
                <asp:Literal ID="ltlImage" runat="server"></asp:Literal>
                <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
            </td>
        </tr>
        </table>
    </ItemTemplate>
</asp:DataList>


</DIV>


</form>

</body>
</html>