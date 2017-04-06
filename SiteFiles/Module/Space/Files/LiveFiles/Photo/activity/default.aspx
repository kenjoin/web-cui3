<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoActivity" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td style="width:10px;"></td>
	<td align="left">
		<space:PhotoCommentedContents IsActivity="true" runat="server" />
		<p align="center">
			转换到<a href="../comments">您评论过的图片</a>?<br /><br />
		</p>
	</td>
  </tr>
</table>
	
</asp:content>