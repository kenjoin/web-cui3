<%@ Control Language="C#" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<form id="MyForm" runat="server"><table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
	<asp:Repeater ID="MyRepeater" runat="server">
		<itemtemplate>
			<asp:Literal id="Item" runat="server" />
		</itemtemplate>
	</asp:Repeater>
</table></form>