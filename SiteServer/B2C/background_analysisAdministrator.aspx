<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundAnalysisAdministrator" enableViewState = "false" %>
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
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">选择时间段&nbsp;<a href="http://help.siteserver.cn/manage/23/91.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看站点数据统计帮助" align="absmiddle"></a></div>
    <div style="padding:3px; text-align:left"> 开始时间：
      <bairong:DateTimeTextBox id="StartDate" class="colorblur" Columns="30" runat="server" />
      &nbsp;&nbsp;
      结束时间：
      <bairong:DateTimeTextBox id="EndDate" class="colorblur" Columns="30" runat="server" />
      &nbsp;&nbsp;
      <asp:Button class="button" id="Analysis" style="margin-bottom:0px;" OnClick="Analysis_OnClick" Text="分 析" runat="server" />
    </div>
  </DIV>
  <DIV class="column">
    <div class="columntitle">按栏目统计</div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名 </td>
        <td align="left" style="width:70px;">&nbsp;新增内容 </td>
        <td align="left" style="width:70px;">&nbsp;修改内容 </td>
        <td align="left" style="width:70px;">&nbsp;新增评论 </td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <bairong:NoTagText id="ElHtml" runat="server" />
        </itemtemplate>
      </asp:Repeater>
    </table>
  </DIV>
  <DIV class="column">
    <div class="columntitle">按管理员统计</div>
    <asp:DataList ID="dlAdministrators" ShowHeader="true" cellspacing="1" cellpadding="1" Width="100%" Align="center" border="0" runat="server">
      <headertemplate>
        <tr class="summary-title" align="Center" style="height:22px;">
          <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录名 </td>
          <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;显示名 </td>
          <td align="left" style="width:70px;">&nbsp;新增内容 </td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:22px;">
          <td align="left">&nbsp;
            <asp:Literal ID="ltlUserName" runat="server"></asp:Literal></td>
          <td align="left">&nbsp;
            <asp:Literal ID="ltlDisplayName" runat="server"></asp:Literal></td>
          <td align="left" style="width:70px;"><asp:Literal ID="ltlContentAdd" runat="server"></asp:Literal></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
    <table width="95%" align="center">
      <tr>
        <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td><bairong:sqlpager id="spAdministrators" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </DIV>
  <br />
</form>
</body>
</html>
