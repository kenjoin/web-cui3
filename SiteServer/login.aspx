<%@ Page Language="c#" Inherits="BaiRong.BackgroundPages.FrameworkLogin" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><lan>管理员登录</lan></title>
<script language="JavaScript">
if (window.top != self){
	window.top.location = self.location;
}
</script>
<link rel="stylesheet" href="style.css" type="text/css" />
<user:custom type="style" runat="server"></user:custom>
<bairong:Code ID="Code1" type="JQuery" runat="server" />
<script type="text/javascript">
    $(document).ready(function () { $('#UserName').focus(); });
</script>
</head>
<style type="text/css">
body {margin:20px auto auto 6px;text-align:center;padding:0;line-height:22px;}
img {border:0}
.tip {padding:4px 0 6px 46px;color:#999;}
#Logo {width:760px;margin:auto;text-align:left;}
#Logo .lg {position:absolute;top:22px}
#Logo .nav {float:right;margin-right:5px;color:#1A82D2}
#Main {width:770px;margin:auto;text-align:center;}
#Bot {width:750px;clear:both;margin:auto;text-align:center;line-height:18px;border-top:1px solid #DADADA;padding-top:13px;margin-top:25px;}
#Bot a {color:#494949;}
#Banner {width:503px;height:170px;float:left;margin-top:30px;}
#Banner .conn_left{float:left;width:3px;height:170px;background:#208DE1}
#Banner .conn_img {margin-top:164px;}
#Banner .index_banner {float:left;background:#208DE1;width:216px;height:170px;}
#Banner .index_bg {float:left;background:url(pic/index_login_bg.gif) repeat-y;width:280px;height:145px!important; height /**/: 170px;padding:25px 0 0 4px;font:normal 12px tahoma;line-height:24px;text-align:left;color:#fff;}
#Banner .color {clear:both;width:503px;height:16px;background:#D4ECFF;border-top:2px solid #fff;}
#Banner ul {list-style:none;margin:12px 0 0 6px;}
#Banner ul li {text-align:left;height:48px;}
.txt {color:#1274BA;}
.txt_ {font-family:tahoma;}
.txt1 {color:#F86B2D;}
.txt2 {font-size:11px!important; font-size /**/:8pt;font-family:tahoma;}
.left {float:left;}
.right {float:right;}
#Login {width:255px;float:left;font-family:tahoma;color:#494949}
#Login .top {height:4px;background:url(pic/login_top_bg.gif) repeat-x;}
#Login .login_bg {height:310px;background:#F9F9F9;border-right:1px solid #8A8A8A;border-left:1px solid #8A8A8A;}
#Login .lg_title {text-align:left;height:23px;margin:0 11px 0px 11px;padding-top:3px;padding-left:4px;border-bottom:1px solid #B5B5B5;}
#Login .lg_title1 {text-align:left;margin:5px 11px;padding-top:3px;padding-left:4px;border-bottom:1px solid #B5B5B5;}
#Login .lg_title2 {text-align:left;margin:0 11px;padding-top:3px;padding-left:4px;color:#ff0000;}
#Login .input_id {text-align:left;margin:0px 0 0 26px;}
#Login .input_pwd {text-align:left;margin:6px 0 0 26px;}
#Login .input_vc {text-align:left;margin:6px 0 0 14px;}
#Login .input_post {text-align:left;margin:8px 0 0 75px;}
#Login .input_fpwd {text-align:left;margin:5px 0 0 32px;}
#Login .bottom {height:4px;background:url(pic/login_bottom_bg.gif) repeat-x;}
#Login .intro_txt {color:#959595;text-align:left;margin-left:62px;}
#Login .txt3 {text-align:left;margin:10px 0 0 22px; clear:both}
.input_n {width:110px;height:15px !important; height /**/:20px;border-style:inset;padding:2px 0 0 2px;font:normal 12px tahoma;}
.input_s {width:62px;height:27px;padding-top:2px;font-weight:bold;border-style:outset;}
#Right {margin-top:30px;float:left;width:12px;height:170px;background:#A5D3F7;}
#Right .color {margin-top:170px;width:12px;height:16px;background:#D4ECFF;border-top:2px solid #fff;}
</style>
<body>
<div id="Logo">
	<div style="float:left"><div class="lg"><a href="<%=GetProductUrl()%>" target="_blank"><img src="pic/company/logo.gif" border="0" /></a></div></div>
	<div class="nav"><asp:Literal ID="ltlHeadLinks" runat="server"></asp:Literal></div>
    <div style="clear:both"></div>
</div>
<div id="Main">
	<div id="Banner">
		<div class="conn_left"><img src="pic/index_conn_left.gif" width="3" height="3" /><img src="pic/index_conn_left_bottom.gif" width="3" height="3" class="conn_img" /></div>
		<div class="index_banner"><img src="pic/Company/login.gif"/></div>
		<div class="index_bg">
全静态发布及面向搜索引擎设计<br/>
可视化及拖拽式的模板制作<br/>
支持多站点，网站群管理<br />
精确化建设、协作化管理、流程化控制<br />
降低开发周期、降低总体成本、降低实施风险
	  </div>
		<div class="color"></div>
		<div style="margin-top:6px;text-align:left;">&nbsp;&nbsp;&nbsp;<asp:Literal ID="ltlUpdate" runat="server"></asp:Literal></div>
	</div>
	<div id="Login">
		<div class="top">
			<div class="left"><img src="pic/login_conn_left.gif" width="4" height="4" /></div>
			<div class="right"><img src="pic/login_conn_right.gif" width="4" height="4" /></div>
		</div>
		<div class="login_bg">
			<form id="form1" runat="server">
			<div class="lg_title"><b class="txt"><lan>管理员登录</lan></b></div>
			<div class="lg_title2"><asp:Label style="font-size:12px; color:#F00" width="100%" id="MessageLabel" runat="server"/><br /></div>
			<div class="input_id"><lan>帐　号</lan>：<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="UserName" runat="server" /> 
			   <asp:RequiredFieldValidator id="RequiredFieldValidator" 
				ControlToValidate="UserName"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
			<asp:RegularExpressionValidator
				runat="server"
				ControlToValidate="UserName"
				ValidationExpression="[^']+"
				ErrorMessage="*"
				Display="Dynamic" />&nbsp;<b class="txt1"></b></div>
			<div class="input_pwd"><lan>密　码</lan>：<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Password" TextMode="Password" runat="server"/> 
			<asp:RequiredFieldValidator
				ControlToValidate="Password" id="RequiredFieldValidator1"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
			<asp:RegularExpressionValidator
				runat="server"
				ControlToValidate="Password"
				ValidationExpression="[^']+"
				ErrorMessage="*"
				Display="Dynamic" /></div>
            <asp:PlaceHolder ID="phValidateCode" runat="server">
			<div class="input_pwd"><lan>验证码</lan>：<asp:TextBox class="colorblur" style="width:80px;" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="ValidateCode" runat="server"/> 
			&nbsp;<asp:Literal ID="ValidateCodeImage" runat="server"></asp:Literal>
			<asp:RequiredFieldValidator
				ControlToValidate="ValidateCode"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
			</div>
            </asp:PlaceHolder>
			<div class="input_post"><asp:Button class="button" id="LoginSubmit" text="{lan:登 录}" onclick="Submit_OnClick" runat="server"/>
			</div>
			<div class="input_fpwd"><asp:CheckBox ID="RememberMe" runat="server" Text="<lan>在此计算机上保留登录帐号</lan>"></asp:CheckBox></div>
            
			<div class="input_fpwd"><a href="forgetPassword.aspx"><lan>忘记密码？</lan></a></div>
            
            <div class="lg_title1"></div>
		  <div class="txt3">
				<lan>当前版本</lan>: <asp:Literal ID="Version" runat="server"></asp:Literal><br />
				.NET 版本: <asp:Literal ID="NetVersion" runat="server"></asp:Literal><br />
				数据库: <asp:Literal ID="Database" runat="server"></asp:Literal>
			</div>
            
            </form>
			
		</div>
		<div class="bottom">
			<div class="left"><img src="pic/login_conn_left_b.gif" width="4" height="4"  /></div>
			<div class="right"><img src="pic/login_conn_right_b.gif" width="4" height="4" /></div>
		</div>
	</div>
	<div id="Right">
		<div class="right"><img src="pic/index_conn_right.gif" width="3" height="3" /></div>
		<div class="color"></div>
  </div>
  <div style="clear:both"></div>
</div>

<div id="Bot">
<A HREF="<%=GetProductUrl()%>" target="_blank" style="text-decoration:none"><span>Copyright &copy;<script>document.write(new Date().getFullYear());</script> <asp:Literal ID="CompanyName" runat="server"></asp:Literal>. All Rights Reserved</span></A></div>
</body>
</html>

