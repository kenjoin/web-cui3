<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationCreate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" type="text/javascript">
function _toggleTab(no,totalNum){
	$("#tab"+no).removeClass("tabOff");
	$("#tab"+no).addClass("tabOn");
	$("#column"+no).show();

	for (var i = 1; i <= totalNum; i++){
		if (i != no){
			$("#tab"+i).removeClass("tabOn");
			$("#tab"+i).addClass("tabOff");
			$("#column"+i).hide();
		}
	}
}
</script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tab">
    <div id="tab1" onClick="_toggleTab(1,2);" class="tabOn6">页面生成设置</div>
    <div id="tab2" onClick="_toggleTab(2,2);" class="tabOff6">栏目变动触发器</div>
    &nbsp;<a href="http://help.siteserver.cn/manage/215/786.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看页面生成设置帮助" align="absmiddle"></a>
    <div class="clearer"></div>
  </div>
  <div id="column1" class="column">
    <div class="tips">提示：在此对生成页面进行详细设置</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="245" align="left"><bairong:help HelpText="是否当浏览页面时生成页面内容" Text="是否仅浏览时生成页面：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateRedirectPage" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="245" align="left"><bairong:help HelpText="当内容变动时是否生成本页" Text="当内容变动时是否生成本页：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateContentIfContentChanged" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="245" align="left"><bairong:help HelpText="当栏目变动时是否生成本页" Text="当栏目变动时是否生成本页：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateChannelIfChannelChanged" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="245" align="left"><bairong:help HelpText="生成页面中是否显示相关信息" Text="生成页面中是否显示相关信息：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateShowPageInfo" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="245" align="left"><bairong:help HelpText="是否设置meta标签强制IE8兼容" Text="是否设置meta标签强制IE8兼容：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateIE8Compatible" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="245" align="left"><bairong:help HelpText="是否设置meta标签强制浏览器清除缓存" Text="是否设置meta标签强制浏览器清除缓存：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateBrowserNoCache" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="245" align="left"><bairong:help HelpText="设置是否生成页面中包含JQuery脚本引用" Text="是否生成页面中包含JQuery脚本引用：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateWithJQuery" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" style="background-image:url(../Pic/line.gif)"></td>
      </tr>
      <tr>
        <td width="245" align="left"><bairong:help HelpText="设置是否双击生成页面，通常用于制作调试期间" Text="是否启用双击生成页面：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCreateDoubleClick" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
          （网站制作及调试期间建议启用） </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
  <div id="column2" style="display:none" class="column">
    <div class="tips">提示：在此设置各栏目生成页面的规则，同时可以设置当栏目下内容改变后需要的生成栏目</div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名</td>
        <td align="left">内容变动时需要生成的栏目</td>
        <td align="center" style="width:50px;">&nbsp;</td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <bairong:NoTagText id="ElHtml" runat="server" />
        </itemtemplate>
      </asp:Repeater>
    </table>
  </div>
</form>
</body>
</HTML>
