<%@ Page Language="C#" Inherits="SiteServer.Space.Blog.Pages.BlogArchivesList" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="GlobalScriptHolder" runat="server">
	
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
	<asp:PlaceHolder ID="NavExtras" runat="server">
		<space:BlogListType runat="server" />
	</asp:PlaceHolder>

	<space:BlogArticles id="articles" runat="server" />
</asp:content>
<asp:content contentplaceholderid="NavigationHolder" runat="server">

<space:NavigationContent runat="server" title="日志索引">
	<contentsTemplate>	
		<space:BlogContentsSelector id="selector" runat="server"></space:BlogContentsSelector>
	</contentsTemplate>
</space:NavigationContent>

</asp:content>
