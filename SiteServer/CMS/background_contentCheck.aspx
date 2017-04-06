<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentCheck" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" src="../Inc/rows.js"></script>
<bairong:Code type="fancybox" runat="server" />
<script type="text/javascript" >
	function init(){
	 loopRows(document.getElementById('MyDataList'), function(cur){ cur.onclick = chkSelect; });
	}
	window.onload = init;
</script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <DIV class="column">
    <div class="columntitle">内容审核&nbsp;<a href="http://help.siteserver.cn/manage/187/726.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看内容审核帮助" align="absmiddle"></a></div>
    <TABLE width="100%" border=0 align=center cellPadding=1 cellSpacing=1>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px;" colspan="2"><asp:Literal ID="ltlContentButtons" runat="server"></asp:Literal></TD>
        </TR>
        <TR align=left>
          <TD align=left style="padding-left:10px; line-height:28px; width:90px;"> 状态：</TD>
          <TD width="90%" align=left style="line-height:28px;"><asp:RadioButtonList ID="State" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="State_SelectedIndexChanged" runat="server"></asp:RadioButtonList></TD>
        </TR>
        <TR align=left>
          <TD align=left style="padding-left:10px; line-height:28px;">内容模型：</TD>
          <TD width="90%" align=left style="line-height:28px;"><asp:DropDownList ID="ContentModelID" AutoPostBack="true" OnSelectedIndexChanged="ContentModelID_SelectedIndexChanged" runat="server"></asp:DropDownList></TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <DIV class="column" id="contents">
    <div class="columntitle">内容列表(共<strong>
      <asp:Literal ID="TotalNum" runat="server"></asp:Literal>
      </strong>篇内容)</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td>&nbsp;内容标题(点击查看)</td>
          <td align="Center" style="width:160px;">所属栏目</td>
          <asp:Literal ID="ltlColumnHeadRows" runat="server"></asp:Literal>
          <td align="Center" style="width:120px;">状态</td>
          <td align="Center" style="width:30px;">&nbsp;</td>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" style="height:25px;">
          <td>&nbsp;
            <asp:Literal ID="ItemTitle" runat="server"></asp:Literal></td>
          <td align="Left" style="width:160px;"><asp:Literal ID="ItemChannelName" runat="server"></asp:Literal></td>
          <asp:Literal ID="ltlColumnItemRows" runat="server"></asp:Literal>
          <td align="Center" style="width:120px;"><nobr>
            <asp:Literal ID="ItemStatus" runat="server"></asp:Literal>
            </nobr></td>
          <td align="Center" style="width:30px;"><asp:Literal ID="ItemEditUrl" runat="server"></asp:Literal></td>
          <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' /></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" Unit="篇文章" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:Button class="button" id="Check" Text="审 核" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Delete" Text="删 除" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>