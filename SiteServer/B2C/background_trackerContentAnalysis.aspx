<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTrackerContentAnalysis" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
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
    <div class="columntitle">选择栏目及时间段</div>
    <div style="padding:3px; text-align:left"> 栏目：
      <asp:DropDownList ID="NodeIDDropDownList" AutoPostBack="true" OnSelectedIndexChanged="NodeIDDropDownList_SelectedIndexChanged" runat="server"> </asp:DropDownList>
      <br />
      开始时间：
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
    <div class="columntitle">内容流量统计（
      <asp:Literal Runat=server ID="NodeName" />
      ）</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td>&nbsp;内容标题(点击查看)</td>
          <td align="Center" style="width:45px;">访问量</td>
          <td align="Center" style="width:50px;">&nbsp;</td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
          <td>&nbsp;
            <asp:Literal ID="ItemTitle" runat="server"></asp:Literal></td>
          <td align="Center" style="width:45px;"><strong>
            <asp:Literal ID="ItemCount" runat="server"></asp:Literal>
            </strong></td>
          <td align="Center" style="width:50px;"><asp:Literal ID="ItemView" runat="server"></asp:Literal></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>