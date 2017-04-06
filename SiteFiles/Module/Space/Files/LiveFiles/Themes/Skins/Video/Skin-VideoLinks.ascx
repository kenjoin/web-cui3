<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<div style="height:22px;">
	<bairong:NoTagText id="WordNum" runat="server" /><bairong:NoTagText id="Set" runat="server" /><bairong:NoTagText id="Tags" runat="server" /><bairong:NoTagText id="AddDate" runat="server" />
</div>
<div>
	<bairong:NoTagText id="Comment" runat="server" /><bairong:NoTagText id="VideoManager" runat="server" /><bairong:NoTagText id="ClickNum" runat="server" />
</div>

<table cellpadding="2" cellspacing="2" width=100% >
  <tr>
	<td>
		<space:ajaxLoading id="loadingComments" runat="server"></space:ajaxLoading>
	</td>
  </tr>
</table>