<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserCheck" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">待审核用户列表&nbsp;<a href="http://help.siteserver.cn/manage/219/800.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看用户审核帮助" align="absmiddle"></a></div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
        <TR class="summary-title" style="HEIGHT: 25px" align="center">
          <TD>登录名</TD>
          <TD>显示名</TD>
          <TD>用户组</TD>
          <TD>注册时间</TD>
          <TD>&nbsp;</TD>
          <TD><INPUT onClick="_checkFormAll(this.checked)" type="checkbox" /></TD>
        </TR>
      </headertemplate>
      <itemtemplate>
        <TR class="tdbg" onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
          <TD style="WIDTH: 160px" align="left"><asp:Literal ID="ltlUserName" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 160px" align="left"><asp:Literal ID="ltlDisplayName" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 150px" align="center"><asp:Literal ID="ltlUserGroupName" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 150px" align="center"><asp:Literal ID="ltlCreationDate" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 40px" align="center"><asp:HyperLink ID="hlEditLink" Text="编辑" runat="server"></asp:HyperLink></TD>
          <TD style="WIDTH: 20px" align="center"><asp:Literal ID="ltlSelect" runat="server"></asp:Literal></TD>
        </TR>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:Button class="button" id="Check" Text="审核通过" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Delete" Text="删 除" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>