<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoArchives" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<table width="550" align="center">
	<tr>
		<td align="left">
			<asp:DataList ID="MyDataList" Width="100%" runat="server" RepeatColumns="2">
				<itemtemplate>
					<table class="YearListing">
						<tr valign="top">
							<td><h4><bairong:NoTagText id="Year" runat="server" /></h4></td>
							<td width="190" align="left">
								<bairong:NoTagText id="Months" runat="server" />
							</td>
						</tr>
					</table>
					</itemtemplate>
			</asp:DataList>
		</td>
	</tr>
</table>
</asp:content>