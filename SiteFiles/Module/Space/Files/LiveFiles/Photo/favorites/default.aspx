<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoFavorites" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td style="width:10px;"></td>
	<td align="left">
		<space:PhotoFavoriteContents runat="server" RepeatColumns="6" />
	</td>
  </tr>
</table>
	
</asp:content>