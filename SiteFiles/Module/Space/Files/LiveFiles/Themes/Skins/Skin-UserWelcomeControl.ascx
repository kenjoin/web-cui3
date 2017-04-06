<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:Literal id="Message" runat="Server" />
<asp:PlaceHolder runat="Server" id="FormsPanel" visible = "false">
	<space:ResourceControl runat="Server" ResourceName = "Utility_ForumAnchorType_MenuSpacer" /> <asp:HyperLink id="logout" runat="Server" />
</asp:PlaceHolder>
<asp:PlaceHolder runat="Server" id="PassportPanel" visible = "false">
	<asp:Literal id="PassportButton" runat="server" />
</asp:PlaceHolder>
<asp:PlaceHolder runat="Server" id="WindowsPanel" visible = "false">

</asp:PlaceHolder>
