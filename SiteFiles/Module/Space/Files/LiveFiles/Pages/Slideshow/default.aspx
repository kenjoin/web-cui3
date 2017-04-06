<%@ Page SmartNavigation="False" Language="C#" enableViewState="false" Inherits="SiteServer.Space.Space.Pages.Slideshow.SlideshowDefault" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>幻灯片</title>
<style>
body {
margin-top:0;
margin-left:0;
margin-right:0;
margin-bottom:0;
}
</style>
<!-- Active Content Detection Kit Support File -->
<script src="resources/javascript/AC_OETags.js" language="javascript"></script>
</head>

<body><div align="center">
<space:Slideshow id="MySlideshow" runat="server" />
</div>
</body>
</html>
