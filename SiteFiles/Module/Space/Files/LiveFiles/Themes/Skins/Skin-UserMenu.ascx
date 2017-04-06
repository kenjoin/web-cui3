<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV class=candy_button_bar id=candy_nav_button_bar>
	<asp:Repeater ID="MenuRepeater" runat="server">
		<itemtemplate><bairong:NoTagText id="MenuItem" runat="server" /></itemtemplate>
	</asp:Repeater>
</DIV>
<SCRIPT type=text/javascript>_decorate(_get('candy_nav_button_bar'), 0, 1);</SCRIPT>