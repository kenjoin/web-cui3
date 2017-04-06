<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<table cellpadding="3" cellspacing="3" width=100% >
  <tr>
	<td>
		<bairong:NoTagText id="WordNum" runat="server" /><bairong:NoTagText id="Set" runat="server" /><bairong:NoTagText id="Tags" runat="server" />
        <bairong:NoTagText id="Comment" runat="server" /><bairong:NoTagText id="TrackBack" runat="server" /><bairong:NoTagText id="BlogManager" runat="server" /><bairong:NoTagText id="ClickNum" runat="server" />
		<space:ajaxLoading id="loadingComments" runat="server"></space:ajaxLoading>
	</td>
  </tr>
</table>