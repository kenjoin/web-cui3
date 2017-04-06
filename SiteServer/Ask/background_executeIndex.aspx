<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundExecuteIndex" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
<user:custom type="showhint" runat="server" />
<DIV class="column">
<div class="columntitle">重新建立索引</div>	
<table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
        <td colspan="2" align="center">
            <asp:Button class="button" id="Submit" text="删除索引并重建" onclick="Submit_OnClick" runat="server" />								</td>
    </tr>
</table>
</DIV>
    </form>
</body>
</HTML>
