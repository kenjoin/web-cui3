<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:Repeater ID="MyRepeater" runat="server">
	<itemtemplate>		
		<bairong:NoTagText id="Tag" runat="server" />&nbsp;
	</itemtemplate>
</asp:Repeater>