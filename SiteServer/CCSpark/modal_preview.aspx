<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CCSpark.BackgroundPages.Modal.Preview" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>视频预览</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <table cellpadding="2" width="95%" align="center">
    <tr align="center">
      <td>
       <script language="javascript" type="text/javascript" src="../../SiteFiles/bairong/Scripts/swfobject.js"></script>
    <div id="swfDiv">
    </div>
<script type="text/javascript">
    //	功能：创建播放器flash，需传递所需参数，具体参数请参考api文档
    var swfobj = new SWFObject('http://union.bokecc.com/flash/player.swf', 'playerswf', '400', '300', '8');
    swfobj.addVariable("userid", "<%=GetUserID()%>"); //	partnerID,用户id
    swfobj.addVariable("videoid", "<%=GetVideoID()%>"); //	spark_videoid,视频所拥有的 api id
    swfobj.addVariable("mode", "api"); //	mode, 注意：必须填写，否则无法播放
    swfobj.addVariable("autostart", "true"); //	开始自动播放，true/false
    swfobj.addVariable("jscontrol", "true"); //	开启js控制播放器，true/false

    swfobj.addParam('allowFullscreen', 'true');
    swfobj.addParam('allowScriptAccess', 'always');
    swfobj.addParam('wmode', 'transparent');
    swfobj.write('swfDiv');

    //	-------------------
    //	调用者：flash
    //	功能：播放器加载完毕时所调用函数
    //	时间：2010-12-22
    //	说明：用户可以加入相应逻辑
    //	-------------------
    function on_spark_player_ready() {
        //alert("播放器加载完毕");
    }

    //	-------------------
    //	调用者：flash
    //	功能：播放器开始播放时所调用函数
    //	时间：2010-12-22
    //	说明：用户可以加入相应逻辑
    //	-------------------
    function on_spark_player_start() {
        //alert('开始播放');
    }

    //	-------------------
    //	调用者：flash
    //	功能：播放器暂停时所调用函数
    //	时间：2010-12-22
    //	说明：用户可以加入相应逻辑
    //	-------------------
    function on_spark_player_pause() {
        //alert('暂停播放');
    }

    //	-------------------
    //	调用者：flash
    //	功能：播放器暂停后，继续播放时所调用函数
    //	时间：2010-12-22
    //	说明：用户可以加入相应逻辑
    //	-------------------
    function on_spark_player_resume() {
        //alert('暂停后继续播放');
    }

    //	-------------------
    //	调用者：flash
    //	功能：播放器播放停止时所调用函数
    //	时间：2010-12-22
    //	说明：用户可以加入相应逻辑
    //	-------------------
    function on_spark_player_stop() {
        //alert('播放停止');
    }

    function player_play() { //	调用播放器开始播放函数
        document.getElementById("playerswf").spark_player_start();
    }
    function player_pause() { //	调用播放器暂停函数
        document.getElementById("playerswf").spark_player_pause();
    }
    function player_resume() { //	调用播放器恢复播放函数
        document.getElementById("playerswf").spark_player_resume();
    }
</script>
      </td>
    </tr>
    <tr>
      <td align="center">
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
