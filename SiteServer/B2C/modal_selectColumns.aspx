<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.SelectColumns" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>选择需要显示的项</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" language="javascript">
function checkAll(layer, bcheck)
{
	for(var i=0; i<layer.children.length; i++)
	{
		if (layer.children[i].children.length>0)
		{
			checkAll(layer.children[i],bcheck);
		}else{
			if (layer.children[i].type=="checkbox")
			{
					layer.children[i].checked = bcheck;
			}
		}
	}
}
</script>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="95%" align="center">
    <tr id="MessageLabelRow" runat="server">
      <td align="center"><asp:Label ID="MessageLabel" Width="100%" runat="server"></asp:Label></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="选择需要显示的项" Text='需要显示的项：<input type="checkbox" id="check_groups" onClick=checkAll(document.getElementById("Group"),this.checked);><label for="check_groups">全选</label>'  runat="server" ></bairong:help>
        <span id="Group">
        <asp:CheckBoxList ID="DisplayAttributeCheckBoxList" RepeatColumns="2" RepeatDirection="Horizontal" Width="100%" runat="server"/>
        </span></td>
    </tr>
    <tr>
      <td align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
