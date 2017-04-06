<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.BackgroundActivities" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle"> 动态管理 </div>
    <TABLE id="contentSearch" width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px;"> 时间从：
            <bairong:DateTimeTextBox id="DateFrom" class="colorblur" Columns="12" runat="server" />
            用户名：
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="UserName"
					MaxLength="500"
					Size="18"
					runat="server"/>
            关键字：
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Keyword"
					MaxLength="500"
					Size="48"
					runat="server"/>
            <asp:Button class="button" OnClick="Search_OnClick" style="MARGIN-BOTTOM: 0px" id="Search" text="搜 索"  runat="server"/></TD>
        </TR>
      </TBODY>
    </TABLE>
    <asp:DataList ID="dlContents" ShowHeader="true" cellspacing="1" cellpadding="1" Width="100%" Align="center" runat="server">
      <headertemplate>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
          <tr class="summary-title" style="height:25px;">
            <td align="Center" style="width:30px;">&nbsp;</td>
            <td>&nbsp;内容标题(点击查看)</td>
            <td align="Center" style="width:80px;">日期</td>
            <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('<%=dlContents.ClientID%>'),this.checked);"></td>
          </tr>
        </table>
      </headertemplate>
      <itemtemplate>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
          <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
            <td align="Center" style="width:30px;"><IMG onClick="ToggleVisible('Content_<%# DataBinder.Eval(Container.DataItem, "ActivityID") %>',this,'../pic/icon/toggleUp.gif','../pic/icon/toggleDown.gif'); return false;" alt="点击显示或隐藏内容" src="../pic/icon/toggleUp.gif" border="0" style="cursor:hand;"></td>
            <td width="90%">&nbsp;
              <asp:Literal ID="ltlTitle" runat="server"></asp:Literal></td>
            <td align="Center" style="width:80px;"><nobr>
              <asp:Literal ID="ltlDate" runat="server"></asp:Literal>
              </nobr></td>
            <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ActivityID")%>' /></td>
          </tr>
          <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" id='Content_<%# DataBinder.Eval(Container.DataItem, "ActivityID") %>' style="display:<%# DataBinder.Eval(Container.DataItem, "RelatedContent") != "" ? "" : "none" %>">
            <td align="Center" style="width:30px;">&nbsp;</td>
            <td colspan="3"><table cellpadding="3" cellspacing="3" border="0" width="100%">
                <tr>
                  <td><asp:Literal ID="ltlContent" runat="server"></asp:Literal></td>
                </tr>
              </table></td>
          </tr>
        </table>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:Button class="button" id="Delete" Text="删 除" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>
