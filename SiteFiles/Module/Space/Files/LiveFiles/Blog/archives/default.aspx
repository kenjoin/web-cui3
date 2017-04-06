<%@ Page Language="C#" Inherits="SiteServer.Space.Blog.Pages.BlogArchives" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

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
<asp:content contentplaceholderid="NavigationHolder" runat="server">

<space:NavigationContent runat="server" title="日志索引">
	<contentsTemplate>	
		<space:BlogContentsSelector id="selector" runat="server"></space:BlogContentsSelector>
	</contentsTemplate>
</space:NavigationContent>

</asp:content>
