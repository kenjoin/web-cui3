<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<div id="divContainer" runat="server" style="display:none; margin-top:4px;">
  <asp:Image ImageUrl="~/sitefiles/bairong/icons/loading.gif" runat="server"></asp:Image>
  内容载入中...</div>
<asp:Literal ID="ltlScripts" runat="server"></asp:Literal>