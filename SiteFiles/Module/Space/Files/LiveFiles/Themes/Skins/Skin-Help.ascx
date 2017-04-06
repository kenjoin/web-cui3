<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<label id="label" runat="server">
	<asp:linkbutton id="cmdHelp" tabIndex="-1" runat="server" CausesValidation="False">
		<asp:image id="imgHelp" tabindex="-1" runat="server" imageurl="~/livefiles/images/help.gif"></asp:image>
	</asp:linkbutton>
	<asp:label id="lblLabel" runat="server" enableviewstate="False"></asp:label>
</label><br>
<asp:panel id="pnlHelp" runat="server" cssClass="Help">
	<asp:label id="lblHelp" runat="server" enableviewstate="False"></asp:label>
</asp:panel>