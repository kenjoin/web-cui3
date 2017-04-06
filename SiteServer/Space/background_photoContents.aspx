<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.BackgroundPhotoContents" %>
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
    <div class="columntitle"> 图片审核 </div>
    <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left width="40" style="padding-left:10px; line-height:28px;"> 状态：</TD>
          <TD align=left style="line-height:28px;"><asp:RadioButtonList ID="State" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="State_OnClick" runat="server"></asp:RadioButtonList></TD>
        </TR>
      </TBODY>
    </TABLE>
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
    <asp:DataList ID="dlContents" ShowHeader="true" cellspacing="1" cellpadding="1" Width="100%" Align="center" border="0" runat="server">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td align="Center" style="width:80px;">缩略图</td>
          <td align="Center">标题</td>
          <td align="Center" style="width:50px;">作者</td>
          <td align="Center" style="width:50px;">点击量</td>
          <td align="Center" style="width:80px;">发布日期</td>
          <td align="Center" style="width:60px;">状态</td>
          <asp:Literal ID="ltlRemarkHeadRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('<%=dlContents.ClientID%>'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
          <td align="center" style="width:80px;"><asp:Literal ID="ltlImage" runat="server"></asp:Literal></td>
          <td>&nbsp;
            <asp:Literal ID="ltlTitle" runat="server"></asp:Literal></td>
          <td align="Center" style="width:50px;"><nobr>
            <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
            </nobr></td>
          <td align="Center" style="width:50px;"><nobr>
            <asp:Literal ID="ltlHits" runat="server"></asp:Literal>
            </nobr></td>
          <td align="Center" style="width:80px;"><nobr>
            <asp:Literal ID="ltlDate" runat="server"></asp:Literal>
            </nobr></td>
          <td align="Center" style="width:60px;"><nobr>
            <asp:Literal ID="ltlState" runat="server"></asp:Literal>
            </nobr></td>
          <asp:Literal ID="ltlRemarkRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' /></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
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
