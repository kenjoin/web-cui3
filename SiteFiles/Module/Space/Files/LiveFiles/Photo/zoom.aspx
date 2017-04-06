<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoZoom" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<div class="ContainerPadding">
<div>
<table cellspacing="0">
	<tr>
		<td style="padding-right: 10px;"><h3>所有尺寸:</h3></td>
		
		<bairong:NoTagText id="SizeList" runat="server" />

		<td style="border-left: solid 1px #eee;">&nbsp;</td>
	</tr>
</table>
<p style="font-size: 14px;"><b><asp:Image ImageUrl="~/sitefiles/bairong/icons/return.gif" class="sppIcon" runat="server"></asp:Image> <asp:HyperLink ID="Return" runat="server" Text="返回图片浏览页面"></asp:HyperLink></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><asp:Image ImageUrl="~/sitefiles/bairong/icons/download.gif" class="sppIcon" runat="server"></asp:Image> <asp:LinkButton ID="DownloadLink" OnClick="DownloadLink_Click" runat="server">下载此图片</asp:LinkButton></b></p>
<p><asp:Image ID="Image" runat="server"/><br /></p>

<p>
</p>																						

</div>

<div class="ThinBucket">												
		
	<h3>您可以通过以下方式链接到此图片:</h3>
	<p><b>1.</b> 拷贝并粘贴代码:</p>		
	<p><asp:TextBox ID="CodeTextBox" runat="server" TextMode="MultiLine" onFocus="this.select();" rows="4" style="width: 520px;" CssClass="text"></asp:TextBox></p>
	<p><b>2.</b> 获取此图片地址:</p>		
	<p><asp:TextBox ID="UrlTextBox" runat="server" onFocus="this.select();" style="width: 520px;" CssClass="text"></asp:TextBox></p>

<p></p>
	
</div>

</div>

</asp:content>
