<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundForum" enableViewState = "false" %>
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
<DIV class="column">
<div class="columntitle">版块管理</div> 
	<table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
	<tr class="summary-title" align="Center" style="height:22px;">
		<td align="Center" style="width:50px;">&nbsp;</td>
        <td align="Left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版块名称</td>
        <td align="Left" style="width:100px;">版主&nbsp;</td>
		<td align="Right" style="width:100px;">版块索引&nbsp;</td>
        <td align="Center" style="width:30px;">上升</td>
        <td align="Center" style="width:30px;">下降</td>
        <td align="Center" style="width:30px;"></td>
        <td align="Center" style="width:20px;"></td>
	</tr>
<asp:Repeater ID="MyRepeater" runat="server">
	<itemtemplate>
		<tr treeItemLevel="<%# GetTreeItemLevel((int)Container.DataItem) %>" class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td align="center" style="width:50px;">
                <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
            </td>
            <td>
                <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
            </td>
            <td align="left">
                <nobr><asp:Literal ID="ltlModerator" runat="server"></asp:Literal></nobr>
            </td>
            <td align="right">
                <nobr><asp:Literal ID="ltlIndexName" runat="server"></asp:Literal></nobr>
            </td>
            <td align="center" style="width:30px;">
                <asp:Literal ID="ltlUpLink" runat="server"></asp:Literal>
            </td>
            <td align="center" style="width:30px;">
                <asp:Literal ID="ltlDownLink" runat="server"></asp:Literal>
            </td>
            <td align="center" style="width:30px;">
                <asp:Literal ID="ltlDeleteLink" runat="server"></asp:Literal>
            </td>
            <td align="center" style="width:20px;">
                <asp:Literal ID="ltlCheckBox" runat="server"></asp:Literal>
            </td>
        </tr>
	</itemtemplate>
</asp:Repeater>
</table>
	
</DIV>
<table width="95%" align="center">
  <tr>
    <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td>
            <asp:Button class="button" id="AddForum" Text="快速添加" runat="server" />&nbsp;
            <asp:Button class="button" id="Translate" Text="版块合并" runat="server" />&nbsp;
            <asp:Button class="button" id="btnState" Text="状 态" runat="server" />&nbsp;
            <asp:Button class="button" id="Delete" Text="删 除" runat="server" />&nbsp;
            <asp:Button class="button" id="Import" Text="导 入" runat="server" Visible="false" />&nbsp;
            <asp:Button class="button" id="Export" Text="导 出" runat="server" Visible="false" />&nbsp;
		</td>
      </tr>
    </table></td>
  </tr>
</table>
</form>

</body>
</html>