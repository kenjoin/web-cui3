<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.AddToGroup" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
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
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="95%" align="center">
    <tr>
      <td align="left"><div style="width:280px;float:left;"><bairong:help HelpText="组名称" Text='组名称：<input type="checkbox" id="check_groups" onClick=checkAll(document.getElementById("Group"),this.checked);><label for="check_groups">全选</label>'  runat="server" ></bairong:help></div>
      <asp:LinkButton ID="lbtnAddGroup" runat="server"></asp:LinkButton>
        <span id="Group">
        <asp:CheckBoxList ID="GroupNameCollection" RepeatColumns="2" RepeatDirection="Horizontal" Width="100%" runat="server"/>
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
