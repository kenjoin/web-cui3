<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoSets" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">

<asp:PlaceHolder ID="NavExtras" runat="server">
	<bairong:NoTagText id="AddSetText" runat="server" />
</asp:PlaceHolder>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td style="width:10px;"></td>
	<td align="left">
		<space:PhotoSets id="sets" RepeatColumns="6" runat="server" />
	</td>
  </tr>
</table>
	
</asp:content>