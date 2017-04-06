<%@ Page Language="C#" %>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
</head>
<frameset id="frame" framespacing="0" border="false" cols="180,*" frameborder="0" scrolling="yes">
	<frame name="tree" scrolling="auto" marginwidth="0" marginheight="0" src="background_contentTree.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&RightPageURL=background_content.aspx" >
	<frame name="content" scrolling="auto" marginwidth="0" marginheight="0" src="background_blank.html">
</frameset>
<noframes>
<body>
<p>This page uses frames, but your browser doesn't support them.</p>
</body>
</noframes>
</html>
