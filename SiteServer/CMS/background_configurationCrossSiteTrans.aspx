<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundConfigurationCrossSiteTrans" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="Calendar" runat="server" />
<script language="javascript" type="text/javascript">
function _checkCol(column, className, bcheck)
{
	var elements = $('#'+column+'.'+className);
	for(var i=0; i<elements.length; i++){
		_checkAll(elements[i], bcheck);
	}
}
</script>
<script language="javascript" src="../Inc/auxiliary.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="column">
    <div class="columntitle">默认设置</div>
    <div class="tips">提示：选择当栏目未设置跨站转发类型时采用的默认设置，同时设置跨站转发到本站点的内容是否需要审核</div>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="240" align="left"><bairong:help HelpText="跨站转发到本站点的内容是否需要审核" Text="跨站转发到本站点的内容是否需要审核：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCrossSiteTransChecked" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
  <div class="column">
    <div class="columntitle">栏目转发设置</div>
    <div class="tips">提示：在此设置各栏目中内容向其他站点跨站转发的选项，如果不指定跨站转发类型将使用站点的默认跨站转发设置</div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="left" style="width:220px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名</td>
        <td align="right">跨站转发设置</td>
        <td align="center" style="width:50px;">&nbsp;</td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <bairong:NoTagText id="ElHtml" runat="server" />
        </itemtemplate>
      </asp:Repeater>
    </table>
  </div>
  <br>
</form>
</body>
</HTML>
