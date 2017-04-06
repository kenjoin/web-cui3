<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<bairong:NoTagText id="ModuleContainer" runat="server" />
  <DIV class="modFrame">
	<TABLE class="modTable" cellSpacing="0" cellPadding="0">
	  <THEAD>
		<TR class="moduleHandler">
		  <TD class="mheader lt"></TD>
		  <TD class="mheader t" id="ModuleHeaderContainer" runat="server"><DIV class="modHeader clearfix">
			  <DIV id="modShow" class="modShow" title="展开/关闭该模块" style="DISPLAY: none"></DIV>
			  <DIV id="ModuleClose" runat="server" class="modCls pageOwner" title="隐藏该模块" style="height:20px;DISPLAY: none" visible="false"></DIV>
			  <DIV class="modEdit" style="DISPLAY: none"><A href="javascript:void(0)">设置</A></DIV>
			  <DIV class="modRfs" title="刷新" style="DISPLAY: none"></DIV>
			  <DIV class="modAdw" style="DISPLAY: none"><A href="javascript:void(0)">添加到我的博客</A></DIV>
			  <DIV class="modIco"><bairong:NoTagText id="ModuleIcon" runat="server" /></DIV>
			  <DIV class="modTitle"><bairong:NoTagText id="ModuleTitle" runat="server" /></DIV>
			</DIV></TD>
		  <TD class="mheader rt"></TD>
		</TR>
	  </THEAD>
	  <TBODY>
		<TR style="DISPLAY: none">
		  <TD class="mneck l"></TD>
		  <TD class="mneck ec"><DIV class="modEditCon refer-edit"></DIV></TD>
		  <TD class="mneck r"></TD>
		</TR>
		<TR>
		  <TD class="mbody l"></TD>
		  <TD class="mbody c"><DIV class="modCon">
			  <div id="ModuleContentSection" runat="server">内容载入中,请稍候...</div>
		  <bairong:AjaxUpdater id="ModuleContentUpdater" RegisterScript="false" runat="server"></bairong:AjaxUpdater>
			</DIV></TD>
		  <TD class="mbody r"></TD>
		</TR>
	  </TBODY>
	  <TFOOT>
		<TR>
		  <TD class="mfooter lb"></TD>
		  <TD class="mfooter b"></TD>
		  <TD class="mfooter rb"></TD>
		</TR>
	  </TFOOT>
	</TABLE>
  </DIV>
</DIV>
<bairong:NoTagText id="ModuleScript" runat="server" />