<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.Modal.AddToSet" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="TitleHolder" runat="server">
	<title><bairong:NoTagText ID="ModalTitle" runat="server" /></title>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<style>
#ScrollDiv{width:90%;overflow-y:scroll;height:180px;PADDING-RIGHT: 2px; DISPLAY: block; PADDING-LEFT: 2px; PADDING-BOTTOM: 4px;}
</style>
<div style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 3px; TEXT-ALIGN: center"><bairong:NoTagText ID="Hint" runat="server"></bairong:NoTagText></div>
<div style="overflow:auto">
<asp:DataList ID="SetDataList" CellPadding="5" CellSpacing="5" Width="100%" runat="server">
  <itemtemplate>
	<bairong:NoTagText ID="ImageHyperLink" runat="server"></bairong:NoTagText>
   </itemtemplate>
</asp:DataList>
</div>
<div align="center">
<button ID="CancelButton" runat="server" class="button">关 闭</button>
</div>
</asp:content>
