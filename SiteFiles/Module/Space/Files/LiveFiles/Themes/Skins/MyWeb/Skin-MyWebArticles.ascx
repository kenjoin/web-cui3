<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<table width="100%" border=0 cellspacing=0 class="partsmb">
  <tr>
	<td width='8'></td>
	<td class="bvBody">
		<asp:DataList ID="MyDataList" Width="100%" CellPadding="8" CellSpacing="8" runat="server">
			<itemtemplate>
			  <div>
				<table cellspacing=0 border=0 width='100%' class='fixedTable blogpost'>
				  <tr>
					<td colspan="2" class='bvh8'></td>
				  </tr>
				  <tr>
					<td class='ellipse'><span class='bvTitle'><bairong:NoTagText id="MyWebTitle" runat="server" /></span></td>
					<td align="right">
					</td>
				  </tr>
				</table>
				<table cellspacing=0 border=0 width='100%' class='fixedTable blogpost' style="margin-top:10px;" id="DetailTable" runat="server">
					<tr>
						<td><bairong:NoTagText id="MyWebDescription" runat="server" /></td>
					</tr>
				</table>
				<table cellspacing=0 border=0 width='100%' class='fixedTable blogpost'>
					<tr>
						<td style="padding-top:5px;"><asp:PlaceHolder ID="MyWebLinksPlaceHolder" runat="server"></asp:PlaceHolder></td>
					</tr>
				</table>
			  </div>
			</itemtemplate>
		</asp:DataList>
	  <bairong:sqlpager id="MySqlPager" PagerStyle="NumericPages" PagingMode="NonCached" Unit="篇收藏" runat="server" Width="100%" cellspacing=0 border=0>
	  </bairong:sqlpager>
	</td>
	<td width='8'></td>
  </tr>
</table>