<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<div style="float:left">
<bairong:NoTagText id="Location" runat="server" />
<asp:Label id="Infomations" runat="server" /><asp:Label id="Commands" runat="server" />
</div>
<div style="float:right">
<asp:PlaceHolder id="Extras" runat="server" />
</div>
<div class="clear"></div>