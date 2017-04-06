<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoUploadProcess" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ScriptHolder" runat="server">
  <script type="text/javascript" language="javascript">	
	function Refresh(url)
	{
		window.setTimeout("Goto('" + url + "')", 1000);
	}
	
	function Goto(url)
	{
		window.location.href = url;
	}
  </script>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">

  <table border=0 cellpadding="0" cellspacing=0 style="width:100%;" class="partsmb">
    <tr>
      <td align="left" class="bvBody">
        <DIV id=uploading_container style="DISPLAY: ; MARGIN-LEFT: 150px; HEIGHT: 500px">
          <div class="separator"></div>
          <H3><asp:Label ID="ProcessLabel" runat="server"></asp:Label><asp:Image ImageUrl="~/sitefiles/bairong/icons/loading.gif" runat="server" /></H3>
          <p> 请不要关闭本窗口！ 您可以打开新窗口继续浏览相册。</p>
        </DIV>
       </td>
    </tr>
  </table>
	
</asp:content>