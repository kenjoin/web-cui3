<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentChannel" %>
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
<script type="text/javascript" >
	function init(){
	 loopRows(document.getElementById('dlContents'), function(cur){ cur.onclick = chkSelect; });
	 loopRows(document.getElementById('channels'), function(cur){ cur.onclick = chkSelect; });
	}
	window.onload = init;
</script>
<bairong:Code type="fancybox" runat="server" />
</head><body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal ID="ltlNodeName" runat="server"></asp:Literal>
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
    <asp:DataList ID="dlContents" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td>&nbsp;内容标题(点击查看)</td>
          <asp:Literal ID="ColumnHeadRows" runat="server"></asp:Literal>
          <td align="Center" style="width:50px;">状态</td>
          <td align="Center" style="width:30px;">&nbsp;</td>
          <asp:Literal ID="RemarkHeadRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('<%=dlContents.ClientID%>'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" style="height:25px;">
          <td>&nbsp;
            <asp:Literal ID="ItemTitle" runat="server"></asp:Literal>
          </td>
          <asp:Literal ID="ColumnItemRows" runat="server"></asp:Literal>
          <td align="Center" style="width:50px;"><nobr><asp:Literal ID="ItemStatus" runat="server"></asp:Literal></nobr></td>
          <td align="Center" style="width:30px;"><asp:Literal ID="ItemEditUrl" runat="server"></asp:Literal></td>
           <asp:Literal ID="ltlCommandItemRow" runat="server"></asp:Literal>
          <asp:Literal ID="ItemRemarkRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' />
          </td>
        </tr>
      </itemtemplate>
    </asp:DataList>
    <table width="95%" align="center">
      <tr>
        <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td><bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager>
              </td>
            </tr>
          </table></td>
      </tr>
    </table>
    <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
        <TBODY>
          <TR class=summary-title align=left>
            <TD align=left style="padding-left:10px;">
                <asp:Literal ID="ltlChannelButtons" runat="server"></asp:Literal>
            </TD>
          </TR>
        </TBODY>
    </TABLE>
    <table id="channels" cellspacing="1" cellpadding="1" align="center" border="0" style="width:100%;word-break: break-all">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="Left">&nbsp;栏目名称(点击查看)</td>
        <td align="Right" style="width:100px;">栏目索引</td>
        <td align="Center" style="width:30px;">上升</td>
        <td align="Center" style="width:30px;">下降</td>
        <td align="Center" style="width:50px;">&nbsp;</td>
        <td align="Center" style="width:30px;">&nbsp;</td>
        <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('channels'),this.checked);"></td>
      </tr>
      <asp:Repeater ID="rtChannels" runat="server">
        <itemtemplate>
          <tr class="tdbg" style="height:25px;">
            <td>&nbsp;
              <bairong:NoTagText id="NodeTitle" runat="server" />
            </td>
            <td align="right"><nobr>
              <bairong:NoTagText id="NodeIndexName" runat="server" />
              </nobr> </td>
            <td align="Center" style="width:30px;"><bairong:NoTagText id="UpLink" runat="server" />
            </td>
            <td align="Center" style="width:30px;"><bairong:NoTagText id="DownLink" runat="server" />
            </td>
            <td align="Center" style="width:50px;"><bairong:NoTagText id="EditLink" runat="server" />
            </td>
            <td align="Center" style="width:30px;"><bairong:NoTagText ID="Comments" runat="server"></bairong:NoTagText>
            </td>
            <td align="Center" style="width:20px;"><bairong:NoTagText id="CheckBoxHtml" runat="server" />
            </td>
          </tr>
        </itemtemplate>
      </asp:Repeater>
    </table>
  </DIV>
</form>
</body>
</html>
