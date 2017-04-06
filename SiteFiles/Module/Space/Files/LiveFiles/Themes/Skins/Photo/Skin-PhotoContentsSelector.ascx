<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<div class="separator"></div>
<div style="margin-left:10px; margin-right:5px;">
	<bairong:NoTagText id="List" runat="server"></bairong:NoTagText>
	<div id="ListBySets">
	<asp:Repeater ID="SetRepeater" runat="server">
	  <itemtemplate>
		<div class="set_div" style="margin-left:20px; margin-top:10px;">
			<div class="set_thumb_div"><asp:HyperLink ID="ImageHyperLink" runat="server"></asp:HyperLink></div>
			<div class="set_title_div"><bairong:NoTagText id="SetName" runat="server" />
				<br><span class="set_count_span"><bairong:NoTagText id="PhotoCount" runat="server" /> 幅图片</span>
			</div>
		</div>
	   </itemtemplate>
	</asp:Repeater>
	</div>
</div>