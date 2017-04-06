<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundConfigurationHandle" enableViewState = "false" %>
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
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <asp:Literal ID="ltlScript" runat="server"></asp:Literal>
  <DIV class="column">
    <div class="columntitle"> 新帖监控设置  </div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="Left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版块名称</td>
        <td align="center" style="width:70px;">是否监控&nbsp;</td>
        <td align="center" style="width:70px;">&nbsp;</td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <tr treeItemLevel="<%# GetTreeItemLevel((int)Container.DataItem) %>" class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></td>
            <td align="center">
              <asp:Literal ID="ltlIsHandle" runat="server"></asp:Literal>
            </td>
            <td align="center" style="width:70px;"><asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal></td>
          </tr>
        </itemtemplate>
      </asp:Repeater>
    </table>
  </DIV>
</form>
</body>
</html>