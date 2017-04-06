<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundThreadCategory" enableViewState = "false" %>
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
<div class="columntitle">分类信息管理</div> 
	<table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
	<tr class="summary-title" align="Center" style="height:22px;">
		<td align="Center" style="width:50px;">&nbsp;</td>
        <td align="Center">分类名称</td>
        <td align="Center" style="width:100px;">所属版块</td> 
        <td align="Center" style="width:30px;">上升</td>
        <td align="Center" style="width:30px;">下降</td>
        <td align="Center" style="width:30px;"></td>
        <td align="Center" style="width:20px;"></td>
	</tr>
<asp:Repeater ID="MyRepeater" runat="server">
	<itemtemplate>
		<tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td align="center" style="width:50px;">
                <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
            </td>
            <td >
                <asp:Literal ID="ltlCategoryName" runat="server"></asp:Literal>
            </td>
            <td align="left">
                <nobr><asp:Literal ID="ltlForumName" runat="server"></asp:Literal></nobr>
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
            <asp:Button class="button" id="AddCategory" Text="添 加" runat="server" />&nbsp; 
            <asp:Button class="button" id="Delete" Text="删 除" runat="server" />&nbsp; 
		</td>
      </tr>
    </table></td>
  </tr>
</table>
</form>

</body>
</html>