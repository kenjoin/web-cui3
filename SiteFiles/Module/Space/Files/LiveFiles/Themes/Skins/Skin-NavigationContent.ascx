<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV class="panel">
<DIV class="panel-title" id="TitleContainer" runat="server">
  <H3><bairong:NoTagText id="Title" runat="server"></bairong:NoTagText></H3>
  <DIV class="clear"></DIV>
</DIV>
<DIV class="panel-top"></DIV>
<DIV class="panel-content">
  <asp:PlaceHolder ID="Content" runat="server"></asp:PlaceHolder>
</DIV>
<DIV class="panel-bottom"></DIV>
</DIV>