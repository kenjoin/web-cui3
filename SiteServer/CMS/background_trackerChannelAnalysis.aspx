<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundTrackerChannelAnalysis" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<script language="javascript" src="../Inc/auxiliary.js"></script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">选择时间段</div>
    <div style="padding:3px; text-align:left"> 开始时间：
      <bairong:DateTimeTextBox id="StartDate" class="colorblur" Columns="30" runat="server" />
      &nbsp;&nbsp;
      结束时间：
      <bairong:DateTimeTextBox id="EndDate" class="colorblur" Columns="30" runat="server" />
      &nbsp;&nbsp;
      <asp:Button class="button" id="Analysis" style="margin-bottom:0px;" OnClick="Analysis_OnClick" Text="分 析" runat="server" />
    </div>
    <div class="tips">提示：不设置开始时间将统计自建站以来所有的流量数据。</div>
  </DIV>
  <DIV class="column">
    <div class="columntitle">栏目流量统计</div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名</td>
        <td align="left" style="width:205px;">比例</td>
        <td align="center" style="width:60px;">栏目访问量</td>
        <td align="center" style="width:60px;">内容访问量</td>
        <td align="center" style="width:50px;">总访问量</td>
        <td align="Center" style="width:50px;">&nbsp;</td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <bairong:NoTagText id="TrHtml" runat="server" />
          
            <td align="left"><nobr>
              <bairong:NoTagText id="NodeTitle" runat="server" />
              </nobr></td>
            <td align="left" style="width:205px;"><TABLE height=8 cellSpacing=0 cellPadding=0 border=0>
                <TBODY>
                  <TR>
                    <TD align=right><IMG src="../pic/tracker_transparency_bar_l.gif"></TD>
                    <TD><bairong:NoTagText id="AccessNumBar" runat="server"></bairong:NoTagText></TD>
                    <TD><IMG src="../pic/tracker_transparency_bar_r.gif"></TD>
                  </TR>
                </TBODY>
              </TABLE></td>
            <td align="center" style="width:60px;"><strong>
              <bairong:NoTagText id="ChannelCount" runat="server" />
              </strong></td>
            <td align="center" style="width:60px;"><strong>
              <bairong:NoTagText id="ContentCount" runat="server" />
              </strong></td>
            <td align="center" style="width:50px;"><strong>
              <bairong:NoTagText id="TotalCount" runat="server" />
              </strong></td>
            <td align="Center" style="width:50px;"><bairong:NoTagText ID="ItemView" runat="server"></bairong:NoTagText></td>
          </tr>
        </itemtemplate>
      </asp:Repeater>
    </table>
  </DIV>
</form>
</body>
</html>