<%@ Page Language="C#" Inherits="SiteServer.Space.Space.IFrame.Player" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>播放器</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color:transparent;
}
-->
</style></head>
<body>
<!-- 歌曲部分开始 -->
<link href="<%=RootUrl%>/liveserver/player/css/black.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="<%=RootUrl%>/liveserver/player/js/common.js"></script>
<script language="javascript" type="text/javascript">
        <!--
        var curFile = "<%=FileUrl%>";
        var vWidth = 288;
        var vHeight = 216;
        //-->
        </script>
<script language="javascript" type="text/javascript" src="<%=RootUrl%>/liveserver/player/js/MediaPlayer1.3.js"></script>
<script language="javascript" type="text/javascript" src="<%=RootUrl%>/liveserver/player/js/Player1.3.js"></script>
<!--歌曲播放器start-->
<div class="v_player">
  <div class="v_title"><img src="<%=RootUrl%>/liveserver/player/mediaplayer/black/topbanner.jpg" /></div>
  <div id="playzone">
    <div id="perpic"><img src="<%=RootUrl%>/liveserver/player/images/player_adv.png" width="288" height="216" alt="" /></div>
    <div id="playerList"></div>
  </div>
  <div class="m_info">
    <div id="mediaTime"></div>
    <div id="mediaInfo">准备就绪</div>
  </div>
  <div class="v_cpanel">
    <div onmousedown="mouseDown(0)" id="pZone"><img id="pBox" height="15" alt="歌曲进度调节" src="<%=RootUrl%>/liveserver/player/mediaplayer/black/p_vbar.jpg" width="7" /></div>
    <img src="<%=RootUrl%>/liveserver/player/mediaplayer/black/btnpause.jpg" id="Play" class="pointer vbtn" onclick="toPlay()" alt="播放/暂停" width="31" height="25" /><img src="<%=RootUrl%>/liveserver/player/mediaplayer/black/btnstop.jpg" name="Stop" width="41" height="25" class="pointer vbtn" id="Stop" alt="停止播放" onclick="toStop()" /><img id="Screen" onclick="toScreen()" class="pointer vbtn" src="<%=RootUrl%>/liveserver/player/mediaplayer/black/btnfullscreen.jpg" alt="全屏观看歌曲" width="41" height="25" /><img src="<%=RootUrl%>/liveserver/player/mediaplayer/black/btnonsound.jpg" width="30" height="25" class="pointer vbtn" id="Mute" alt="声音开/关" onclick="toMute()" />
    <div onmousedown="mouseDown(1)" id="vZone"><img id="vBox" height="25" alt="音量大小调节" src="<%=RootUrl%>/liveserver/player/mediaplayer/black/v_box.jpg" width="10" /></div>
  </div>
</div>
<!--歌曲播放器end-->
<!-- 歌曲部分结束 -->
</body>
</html>
