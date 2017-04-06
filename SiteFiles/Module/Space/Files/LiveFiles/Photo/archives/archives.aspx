<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoArchivesList" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
	<asp:PlaceHolder ID="NavExtras" runat="server">
		<space:PhotoListType runat="server" />
	</asp:PlaceHolder>
	
	<space:PhotoSquareContents runat="server" RepeatColumns="10" CellSpacing="6" />
</asp:content>