<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<div class="separator"></div>
<div>
	<bairong:NoTagText id="ListBySets" runat="server" EnableViewState="false"></bairong:NoTagText>
	<bairong:NoTagText id="ListByTags" runat="server" EnableViewState="false"></bairong:NoTagText>
	<bairong:NoTagText id="ListByDate" runat="server" EnableViewState="false"></bairong:NoTagText>
	<bairong:NoTagText id="ListByComments" runat="server" EnableViewState="false"></bairong:NoTagText>
</div>