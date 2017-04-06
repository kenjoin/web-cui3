<%@ Control Language="C#" Inherits="BaiRong.Controls.HelpControl" %>
<label id="label" runat="server">
	<asp:linkbutton id="cmdHelp" tabIndex="-1" runat="server" CausesValidation="False">
		<asp:image id="imgHelp" tabindex="-1" runat="server" imageurl="../pic/help.gif"></asp:image>
	</asp:linkbutton>
	<asp:label id="lblLabel" runat="server"></asp:label>
</label><br>
<asp:panel id="pnlHelp" runat="server" cssClass="Help">
	<asp:label id="lblHelp" runat="server"></asp:label>
</asp:panel>