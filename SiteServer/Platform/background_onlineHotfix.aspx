<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundOnlineHotfix" %>
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
</HEAD><body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
<div id="success" style="position:absolute;z-index:300;height:120px;width:320px;left:50%;top:160px;margin-left:-150px;margin-top:-80px; display:none">
    <div class="column" style="position:absolute;z-index:300;width:100%;left:4px;top:5px;height:90px;font-size:14px;background-color:#FFFFFF">
      <div class="columntitle">操作提示</div>
      <div class="content" style="height:64px;line-height:150%;" align="center"><BR />
        <img border="0" src="../pic/animated_loading.gif" align="absmiddle" />&nbsp;程序正在运行, 请稍候...
        <BR /><BR />
      </div>
    </div>
  </div>
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">在线补丁修复</div>
    <div class="tips"><asp:Literal ID="ltlTips" runat="server"></asp:Literal></div>
    <asp:PlaceHolder ID="phContent" runat="server">
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="120" align="left">已安装产品：
        </td>
        <td align="left">
        	<asp:Literal ID="ltlProducts" runat="server"></asp:Literal>
        </td>
      </tr>
      <tr>
        <td align="left">当前版本号：
        </td>
        <td align="left">
        	<asp:Literal ID="ltlVersion" runat="server"></asp:Literal>
        </td>
      </tr>
      <tr>
        <td align="left">
        已修复补丁：</td>
        <td align="left">
        	<asp:Literal ID="ltlHotfix" runat="server"></asp:Literal>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button ID="btnContent" class="button" text="在线检测补丁" onclick="Content_OnClick" runat="server" /></td>
      </tr>
    </table>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phHotfix" runat="server">
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="120" align="left">补丁：
        </td>
        <td align="left">
        	<asp:Literal ID="ltlName" runat="server"></asp:Literal>
        </td>
      </tr>
      <tr>
        <td align="left">发布日期：
        </td>
        <td align="left">
        	<asp:Literal ID="ltlDate" runat="server"></asp:Literal>
        </td>
      </tr>
      <tr>
        <td align="left">
        说明：</td>
        <td align="left">
        	<asp:Literal ID="ltlSummary" runat="server"></asp:Literal>
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button ID="btnHotfix" class="button" text="开始修复补丁" runat="server" /></td>
      </tr>
    </table>
    </asp:PlaceHolder>
  </div>
</form>
</body>
</HTML>
