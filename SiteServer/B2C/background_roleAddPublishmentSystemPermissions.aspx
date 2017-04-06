<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundRoleAddPublishmentSystemPermissions" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" language="javascript">
function ChannelPermissions_CheckAll(chk){
	var oEvent = document.getElementById('ChannelPermissions');
	var chks = oEvent.getElementsByTagName("INPUT");
	for(var i=0; i<chks.length; i++)
	{
		if(chks[i].type=="checkbox") chks[i].checked=chk.checked;
	}
}

function WebsitePermissions_CheckAll(chk){
	var oEvent = document.getElementById('WebsitePermissions');
	var chks = oEvent.getElementsByTagName("INPUT");
	for(var i=0; i<chks.length; i++)
	{
		if(chks[i].type=="checkbox") chks[i].checked=chk.checked;
	}
}
</script>
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <asp:PlaceHolder ID="WebsitePermissionsPlaceHolder" runat="server">
    <DIV class="column">
      <div class="columntitle">与站点相关权限设置</div>
      <table width="100%" cellpadding="4" cellspacing="0" border="0">
        <tr>
          <td align="left"><input type="checkbox" onClick="WebsitePermissions_CheckAll(this)" id="CheckAll2" name="CheckAll2">
            <label for="CheckAll2">全选</label>
            <asp:CheckBoxList ID="WebsitePermissions" RepeatColumns="7" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList></td>
        </tr>
      </table>
    </DIV>
  </asp:PlaceHolder>
  <asp:PlaceHolder ID="ChannelPermissionsPlaceHolder" runat="server">
    <DIV class="column">
      <div class="columntitle">与栏目相关权限设置</div>
      <table width="100%" cellpadding="4" cellspacing="0" border="0">
        <tr>
          <td><input type="checkbox" onClick="ChannelPermissions_CheckAll(this)" id="CheckAll1" name="CheckAll1">
            <label for="CheckAll1">全选</label>
            <asp:CheckBoxList ID="ChannelPermissions" RepeatColumns="7" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList></td>
        </tr>
        <tr>
          <td class="tdbg-dark"><div class="tips">注：从下边选择需要管理的栏目，所选栏目下的所有子栏目都属于可管理范围。</div></td>
        </tr>
        <tr>
          <td align="left"><asp:Literal ID="NodeTree" runat="server"></asp:Literal></td>
        </tr>
      </table>
    </DIV>
  </asp:PlaceHolder>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td ></td>
      <td align="center" ><asp:Button class="button" id="Submit" text="确 定" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <asp:Button class="button" id="Return" text="返 回" onclick="Return_OnClick" runat="server"/></td>
      <td ></td>
    </tr>
  </table>
</form>
</body>
</html>