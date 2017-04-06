<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoTags" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div class="ContainerPadding">
	<space:TagsCloud id="MyTagsCloud" runat="server" fontsize="14"></space:TagsCloud>
  </div>
  <div class="separator"></div>
</asp:content>