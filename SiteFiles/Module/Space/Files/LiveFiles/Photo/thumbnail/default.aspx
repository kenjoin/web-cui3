<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoThumbnail" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<asp:PlaceHolder ID="NavExtras" runat="server">
	<space:PhotoListType runat="server" />
</asp:PlaceHolder>



<table width="100%" cellspacing="0" cellpadding="0">
	<tr valign="top">
		<td width="100%">
			<space:PhotoThumbnailContents runat="server" RepeatColumns="4" />
		</td>
		<td class="SetsColumn">
			<space:PhotoSets id="sets" runat="server" />
			<asp:Image ImageUrl="~/SiteFiles/bairong/Icons/spaceball.gif" width="200" height="1" runat="server"></asp:Image>
		</td>			
	</tr>
</table>

</asp:content>