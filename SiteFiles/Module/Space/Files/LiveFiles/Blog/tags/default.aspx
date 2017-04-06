<%@ Page Language="C#" Inherits="SiteServer.Space.Blog.Pages.BlogTags" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div class="ContainerPadding">
	<space:TagsCloud id="MyTagsCloud" runat="server" fontsize="14"></space:TagsCloud>
  </div>
  <div class="separator"></div>
</asp:content>
<asp:content contentplaceholderid="NavigationHolder" runat="server">

<space:NavigationContent runat="server" title="日志索引">
	<contentsTemplate>	
		<space:BlogContentsSelector id="selector" runat="server"></space:BlogContentsSelector>
	</contentsTemplate>
</space:NavigationContent>

</asp:content>
