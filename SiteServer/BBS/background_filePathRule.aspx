<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundFilePathRule" enableViewState = "false" %>
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
    <div class="columntitle"> 默认命名规则 </div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="Left">板块命名规则</td>
        <td align="center" style="width:70px;">&nbsp;</td>
      </tr>
      <tr>
        <td><asp:Literal ID="ltlFilePathRuleForum" runat="server"></asp:Literal></td>
        <td align="center" style="width:70px;"><asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal></td>
      </tr>
    </table>
  </DIV>
  <DIV class="column">
    <div class="columntitle"> 页面命名规则 </div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="Left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版块名称</td>
        <td align="Left">访问地址&nbsp;</td>
        <td align="center" style="width:70px;">&nbsp;</td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <tr treeItemLevel="<%# GetTreeItemLevel((int)Container.DataItem) %>" class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></td>
            <td align="left">
              <asp:Literal ID="ltlFilePath" runat="server"></asp:Literal>
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