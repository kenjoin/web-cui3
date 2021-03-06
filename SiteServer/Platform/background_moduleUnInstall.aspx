﻿<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundModuleUnInstall" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<script language="javascript" src="../Inc/auxiliary.js"></script>
<script language="JavaScript" type="text/JavaScript">
function hideBoxAndShowMessage(butt){
	//butt.disabled = true;
	var selects = document.getElementsByTagName("SELECT");
	var objects = document.getElementsByTagName("OBJECT");
	for(var i = 0; i < selects.length; i++) {
		selects[i].style.visibility="hidden";
	}
	for(var i = 0; i < objects.length; i++) {
		objects[i].style.visibility="hidden";
	}
	document.getElementById('success').style.display = 'block';
}
</script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <div id="success" style="position:absolute;z-index:300;height:120px;width:320px;left:50%;top:160px;margin-left:-150px;margin-top:-80px; display:none">
    <div class="column" style="position:absolute;z-index:300;width:100%;left:4px;top:5px;height:90px;font-size:14px;background-color:#FFFFFF">
      <div class="columntitle">操作提示</div>
      <div class="content" style="height:64px;line-height:150%;" align="center"><BR />
        <img border="0" src="../pic/animated_loading.gif" align="absmiddle" />&nbsp;正在运行卸载程序, 请稍候... <BR />
        <BR />
      </div>
    </div>
  </div>
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle"> 卸载平台产品</div>
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品名称" Text="产品名称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="ModuleName" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品全称" Text="产品全称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="FullName" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="版本号" Text="版本号：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="Version" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品网址" Text="产品网址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="ModuleUrl" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="联系Email" Text="联系Email：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="Email" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="开发团队" Text="开发团队：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="Developer" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品介绍" Text="产品介绍：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="Description" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="是否删除数据库" Text="是否删除数据库：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsDeleteDatabase" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="是否删除程序文件" Text="是否删除程序文件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsDeleteFiles" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="开始卸载" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;
          <input class="button" type="button" onClick="location.href='background_module.aspx';return false;" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
