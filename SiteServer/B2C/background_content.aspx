<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundContent" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" src="../Inc/rows.js"></script>
<script type="text/javascript" >
	function init(){
	 loopRows(document.getElementById('dlContents'), function(cur){ cur.onclick = chkSelect; });
	}
	window.onload = init;
</script>
<bairong:Code type="fancybox" runat="server" />
</head>
<body>
<user:custom type="showpopwin" runat="server" />

<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal ID="ltlNodeName" runat="server"></asp:Literal>
      &nbsp;<a href="http://help.siteserver.cn/manage/187.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看内容管理帮助" align="absmiddle"></a>
    </div>
    <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px;">
            <asp:Literal ID="ltlContentButtons" runat="server"></asp:Literal>
          </TD>
        </TR>
      </TBODY>
    </TABLE>
    <TABLE id="contentSearch" style="display:none" width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px;">
            时间从：
            <bairong:DateTimeTextBox id="DateFrom" class="colorblur" Columns="12" runat="server" />
            目标：
            <asp:DropDownList ID="SearchType" runat="server"> </asp:DropDownList>
            关键字：
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Keyword"
					MaxLength="500"
					Size="48"
					runat="server"/>
            <asp:Button class="button" OnClick="Search_OnClick" style="MARGIN-BOTTOM: 0px" id="Search" text="搜 索"  runat="server"/>
          </TD>
        </TR>
      </TBODY>
    </TABLE>
    <asp:DataList ID="dlContents" ShowHeader="true" cellspacing="1" cellpadding="1" Width="100%" Align="center" runat="server">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td>&nbsp;内容标题(点击查看)</td>
          <asp:Literal ID="ltlColumnHeadRows" runat="server"></asp:Literal>
          <td align="Center" style="width:50px;">状态</td>
          <td align="Center" style="width:30px;">&nbsp;</td>
          <asp:Literal ID="ltlCommandHeadRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('<%=dlContents.ClientID%>'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" style="height:25px;">
          <td>&nbsp;
            <asp:Literal ID="ltlItemTitle" runat="server"></asp:Literal>
          </td>
          <asp:Literal ID="ltlColumnItemRows" runat="server"></asp:Literal>
          <td align="Center" style="width:50px;"><nobr><asp:Literal ID="ltlItemStatus" runat="server"></asp:Literal></nobr></td>
          <td align="Center" style="width:30px;"><asp:Literal ID="ltlItemEditUrl" runat="server"></asp:Literal></td>
          <asp:Literal ID="ltlCommandItemRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' />
          </td>
        </tr>
      </itemtemplate>
    </asp:DataList>
    <table width="95%" align="center">
      <tr>
        <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td><bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing="0"></bairong:sqlpager>
              </td>
            </tr>
          </table></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</html>
