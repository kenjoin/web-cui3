<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<table cellpadding="0" cellspacing="0" style="margin-left:5px;">
	<tr>
		<td rowspan="2" valign="middle">
			<asp:HyperLink ID="OwnerIconLink" Target="_blank" runat="server"><asp:Image ID="OwnerIcon" Width="24" Height="24" runat="server" /></asp:HyperLink>&nbsp;
		</td>
		<td align="left">
			<nobr><bairong:NoTagText id="OwnerName" runat="server" /></nobr>
		</td>
	</tr>
	<tr>
		<td align="left"><nobr><bairong:NoTagText id="UpdateTime" runat="server" /></nobr></td>
	</tr>
</table>