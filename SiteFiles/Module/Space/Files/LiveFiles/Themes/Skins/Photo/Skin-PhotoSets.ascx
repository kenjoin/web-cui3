<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<div class="separator"></div>

<asp:DataList ID="dlSets" runat="server">
  <itemtemplate>
	<div class="set_div">
		<div class="set_thumb_div"><asp:HyperLink ID="ImageHyperLink" runat="server"></asp:HyperLink></div>
		<div style="font-size: 13px;font-weight:bold;"><bairong:NoTagText id="SetName" runat="server" /></div>
		<span class="set_count_span"><b><bairong:NoTagText id="PhotoCount" runat="server" /></b> 幅图片</span><bairong:NoTagText id="SetEdit" runat="server" />
	</div>
	<bairong:NoTagText id="BreakLine" runat="server" />
   </itemtemplate>
</asp:DataList>
<asp:Literal ID="ltlCreateSet" runat="server"></asp:Literal>