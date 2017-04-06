<%@ Control Language="C#" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="bi">
<tr>
<td nowrap>&nbsp;&nbsp;&nbsp;<span class="fB">站内检索</span></td>
<td align="right" nowrap><asp:Literal ID="SearchInfo" runat="server"/></td>
</tr>
</table>

<table border="0"cellpadding="0" cellspacing="0" style="height:400px;">
<tr>
<td>
<asp:Literal ID="Results" runat="server"/>

<asp:Literal ID="Pages" runat="server"/>
</td>
</tr>
</table>

<table border="0"cellpadding="0" cellspacing="0" style="margin-left:18px;height:60px;">
<tr valign="middle">
<td nowrap>
	<asp:Literal ID="BottomSearchForm" runat="server"/>
</td>
</tr>
</table>