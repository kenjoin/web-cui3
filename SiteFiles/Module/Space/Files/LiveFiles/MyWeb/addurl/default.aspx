<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.MyWeb.Pages.MyWebAddUrl" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ScriptHolder" runat="server">
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">

	<space:MyWebAddUrl runat="server" />

</asp:content>
