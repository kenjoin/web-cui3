<%@ Page Language="C#" Inherits="UserCenter.System.Platform.Default" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />

<style type="text/css">
.todaybody { overflow:auto; overflow-x:hidden }
.tipnew { position:absolute; margin:-3px 0 0 2px; color:#ff0000; font:normal 10px tahoma; }
.infobar { padding:8px 4px 6px 10px; margin-top:-4px }
.infobar p { margin:6px 0 6px 0; padding:0 0 0 0; }
.filternone { filter:none; }
.myaccountinfo { height:38px; margin:0; padding:0; list-style:none; }
.bigwelcome { font:bold 16px Verdana; }
.greeting { margin:4px 0 0 2px }
.greeting img { margin:-2px 0 0 0!important; margin:0; }
.unreadmail, .unreadflag { margin:0 0 0 2px; padding:0; list-style:none; }
.unreadflag { margin-top:10px; margin-bottom:10px!important; margin-bottom:0; }
.sepfolder { white-space:nowrap; margin-right:5px }
.posli { margin-top:4px!important; margin-top:0; line-height:19px; }
.flagtotal { margin:0 2px 0 0; }
.weatherul { margin:0; padding:0; list-style:none; }
.weatherul li { float:left; }
.wtom, .clearall { clear:both; }
.weathercontent { padding:10px 0 0 7px }
.noborder { border:none; }
.face_tip { margin:-6px 0 8px 0; padding-left:4px; color:#494949; border:none; clear:none; font-size:12px; height:30px; }
ul.enterul2 { margin:0; padding:4px 12px 0 12px; list-style:none; }
ul.enterul2 li { float:left; height:36px; *height:30px;
width:44%; white-space:nowrap }
ul.enterul2 .bd { border-width:0!important; border-width:1px; }
.entertip { margin:0; padding:4px 0 0 11px; font:normal 12px Verdana; }
.enterimg { margin:0 6px 0 0; float:left; width:27px; height:27px; border:none; }
.enterlink { float:left; display:block; margin:5px 0 0 0; }
.tipbook-top { border-bottom:1px solid #d8dee5; }
ul.tipbook { border-top:1px solid #d8dee5; margin:0 13px; padding:18px 0 0 2px; list-style:none; }
ul.tipbook li { height:28px; }
.graydiv { font:normal 12px Verdana; margin:6px 0 0 1px; }
.border_white { border:none!important; border:1px solid #fff; }
.mailinfo1 { min-height:52px; height:auto!important; height:45px; padding:0; line-height:22px; font-size:14px; width:auto; border-bottom:1px solid #fff; }
.index_today_1 { background:url(../img/index_today.gif) no-repeat; margin:-2px 7px 0 -1px; }
.index_today_2 { background:url(../img/index_today.gif) 0 -27px no-repeat; }
.index_today_3 { background:url(../img/index_today.gif) 0 -54px no-repeat; }
.index_today_4 { background:url(../img/index_today.gif) 0 -81px no-repeat; }
.index_today_5 { background:url(../img/index_today.gif) 0 -109px no-repeat; }
.index_today_6 { background:url(../img/index_today.gif) 0 -136px no-repeat; }
.rank span { display:block; float:left; margin:1px 1px 0 0; }
.tipstitle_title { font:normal 14px Verdana; margin-bottom:5px; padding-left:13px; padding-top:8px; }
.sepcontent { margin-top:10px; }
.firstpart { margin:20px 0 0 0; padding-left:78px; border-bottom:1px solid #d8dee5; }
.firstpart span.content { font:normal 14px Verdana; color:#000; }
.firstpart span.content a { }
.firstpart div.addrtitle { margin:4px 0 0 0; height:41px; line-height:17px; }
.seppart { clear:left; }
.seppart span.content { }
.seppart b.addrtitle { font-weight:normal; color:#000; }
.seppart div.addrtitle { display:none; }
a { text-decoration:none; }
a:hover { text-decoration:none; }
</style>
<script language="javascript" charset="gb2312" src="/sitefiles/bairong/scripts/global.v1.3.5.js"></script>
</head>
<body class="todaybody"  >
<user:custom type="showpopwin" runat="server" />
<div class="main-wrap">
  <div class="path">
    <p>当前位置：个人信息<span>&gt;</span>用户首页</p>
  </div>
  <div class="tipbook-top" style="padding:0 0 3px 0;margin:0 12px;height:79px;*height:82px;overflow:hidden; "> <a href="../platform/avatar.aspx" title="点击更换">
    <asp:Literal ID="ltlIcon" runat="server"></asp:Literal>
    </a>
    <div class="firstpart">
      <div class="addrtitle" style="border:none">
        <asp:Literal ID="ltlWelcome" runat="server"></asp:Literal>
        <br>
        <asp:Literal ID="ltlLastActivityDate" runat="server"></asp:Literal>
      </div>
    </div>
  </div>
  <ul class="enterul2 addrtitle" style="border-bottom:none; width:500px" >
    <li class="border_white"  >
      <div class="entertip" id="id5">
        <input type="button" onFocus="this.blur()" align="absmiddle" class="enterimg index_today_3"/>
        <span class="enterlink"><a href="../platform/attributes.aspx" >修改账户信息</a></span> </div>
    </li>
    <li class="border_white" >
      <div class="entertip" id="id4" >
        <input id="it2" type="button" onFocus="this.blur()" class="enterimg index_today_4" align="absmiddle"/>
        <a href="../platform/userMessage.aspx">短消息管理</a> </div>
    </li>
    <asp:PlaceHolder ID="phContribute" runat="server">
      <li class="border_white" >
        <div class="entertip" id="id6">
          <input id="it6" type="button" onFocus="this.blur()" class="enterimg index_today_6" align="absmiddle"/>
          <a class="enterlink" href="../cms/contents.aspx" >内容投稿管理</a> </div>
      </li>
      <li class="border_white" >
        <div class="entertip" id="id2">
          <input id="it4" type="button" onFocus="this.blur()" class="enterimg index_today_2" align="absmiddle"/>
          <a class="enterlink" href="../cms/contentSelect.aspx" >发表投稿</a> </div>
      </li>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phAttachment" runat="server">
      <li class="border_white">
        <div class="entertip" id="id1">
          <input id="it3" type="button" onFocus="this.blur()" class="enterimg impupload index_today_5" align="absmiddle"/>
          <a class="enterlink"  href="../platform/filemain.aspx">文档附件管理</a> </div>
      </li>
      <li class="border_white" >
        <div class="entertip" id="id3">
          <input id="it1" type="button" onFocus="this.blur()" class="enterimg index_today_1" align="absmiddle" />
          <a class="enterlink" onClick="<%=GetUploadClickString()%>" href="javascript:void">上传文档附件</a> </div>
      </li>
    </asp:PlaceHolder>
  </ul>
</div>
<div class="bd" style="border-width:1px 0 0 0;margin:-10px 0 10px 0;*margin:4px 0 10px 0;overflow:hidden"></div>
</body>
</html>
