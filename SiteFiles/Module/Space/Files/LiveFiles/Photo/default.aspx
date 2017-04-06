<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoDefault" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<asp:PlaceHolder ID="NavExtras" runat="server">
	<space:PhotoListType runat="server" />
</asp:PlaceHolder>

<table width="100%" cellspacing="0" cellpadding="0">
	<tr valign="top">
		<td width="100%">
			<space:PhotoLargeContents runat="server" />
            <asp:PlaceHolder ID="phNoPhoto" runat="server" Visible="false">
            
<UL class="clearfix">
<LI>
<P style="font-size:14px">您还没有上传图片，<A href="upload/default.aspx" style="font-size:14px">马上上传</A></P></LI></UL>

            </asp:PlaceHolder>
		</td>
		<td class="SetsColumn">
        <br />
			<space:PhotoSets id="sets" runat="server" />
            <asp:Image ImageUrl="~/SiteFiles/bairong/Icons/spaceball.gif" width="200" height="1" runat="server"></asp:Image>
		</td>			
	</tr>
</table>

</asp:content>