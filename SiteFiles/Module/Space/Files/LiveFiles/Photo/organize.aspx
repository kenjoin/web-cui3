<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoOrganize" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="GlobalScriptHolder" runat="server">
	<space:Code type="lightbox" runat="server" />
</asp:content>
<asp:content contentplaceholderid="StyleHolder" runat="server">
  <style type="text/css">
#photo {}
	
#photo ul { padding:0; margin:10px 0;}
*html #photo ul { height:1%;}
#photo ul:after { content:"."; display:block; height:0; clear:both; visibility:hidden;}

	#photo li { float:left; padding:10px; list-style-type:none;}
		#photo li a { display:block; padding:1px;}
			#photo li a img  { border:1px #2D332D solid;}
			#photo li a span { display:none;}
		#photo li a:hover { border:2px #FF0084 solid; padding:0;}
			#photo li a:hover img { border:0;}
			#photo li a:hover span { display:block; position:relative; background:url(<%=RootUrl%>/liveserver/pic/photo/date_bg.gif); font-size:11px; text-decoration:none; text-transform:uppercase; text-align:center; width:58px; vertical-align:middle; height:16px; line-height:16px; cursor:pointer;}
			#photo li a:hover > span { margin:-72px 0 0 3px; padding:2px 0 0; line-height:14px; height:14px;}

</style>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<div class="ContainerPadding">
    
    	<div id="photo">
          <ul>
            <li><a href="http://www.flickr.com/photo/songvision/195185504/" target="_blank"><img src="http://static.flickr.com/69/195185504_3e9c6f3f45_s.jpg" /><span>15 jul 06</span></a></li>
            <li><a href="http://www.flickr.com/photo/songvision/195308529/" target="_blank"><img src="http://static.flickr.com/63/195308529_43c904807f_s.jpg" /><span>15 jul 06</span></a></li>
            <li><a href="http://www.flickr.com/photo/songvision/191488249/" target="_blank"><img src="http://static.flickr.com/53/191488249_5f3eb7fdde_s.jpg" /><span>15 jul 06</span></a></li>
            <li><a href="http://www.flickr.com/photo/songvision/189523133/" target="_blank"><img src="http://static.flickr.com/58/189523133_ac780a82dc_s.jpg" /><span>15 jul 06</span></a></li>
            <li><a href="http://www.flickr.com/photo/songvision/189521065/" target="_blank"><img src="http://static.flickr.com/61/189521065_3e6aff6869_s.jpg" /><span>15 jul 06</span></a></li>
            <li><a href="http://www.flickr.com/photo/songvision/184088109/" target="_blank"><img src="http://static.flickr.com/49/184088109_811181ac3e_s.jpg" /><span>15 jul 06</span></a></li>
          </ul>
        </div>  
</div>
</asp:content>
