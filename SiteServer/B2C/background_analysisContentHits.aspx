<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundAnalysisContentHits" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">内容点击排名</div>
    <asp:DataList ID="dlContents" ShowHeader="true" cellspacing="1" cellpadding="1" Width="100%" Align="center" runat="server">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td>&nbsp;内容标题(点击查看)</td>
          <td style="width:180px;">所属栏目</td>
          <td style="width:60px;" align="center">点击量</td>
          <td style="width:60px;" align="center">日点击量</td>
          <td style="width:60px;" align="center">周点击量</td>
          <td style="width:60px;" align="center">月点击量</td>
          <td style="width:100px;" align="center">最后点击时间</td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" style="height:25px;">
          <td>&nbsp;
            <asp:Literal ID="ltlItemTitle" runat="server"></asp:Literal></td>
          <td style="width:180px;"><asp:Literal ID="ltlChannel" runat="server"></asp:Literal></td>
          <td style="width:60px;" align="center"><asp:Literal ID="ltlHits" runat="server"></asp:Literal></td>
          <td style="width:60px;" align="center"><asp:Literal ID="ltlHitsByDay" runat="server"></asp:Literal></td>
          <td style="width:60px;" align="center"><asp:Literal ID="ltlHitsByWeek" runat="server"></asp:Literal></td>
          <td style="width:60px;" align="center"><asp:Literal ID="ltlHitsByMonth" runat="server"></asp:Literal></td>
          <td style="width:100px;" align="center"><asp:Literal ID="ltlLastHitsDate" runat="server"></asp:Literal></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing="0"></bairong:sqlpager></td>
          </tr>
        </table></td>
    </tr>
  </table>
  </td>
  </tr>
  </table>
</form>
</body>
</html>
