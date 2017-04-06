<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTrackerYear" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">访问量年分配图表</div>
    <TABLE cellPadding=2 border=0>
      <TBODY>
        <TR>
          <TD>单位（访问量）</TD>
        </TR>
        <TR>
          <TD align=middle><TABLE align=center>
              <TBODY>
                <TR vAlign=bottom>
                  <TD vAlign=top><TABLE height=200 cellSpacing=0 cellPadding=0 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(8)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(7)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(6)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(5)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(4)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(3)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(2)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetAccessNum(1)%></TD>
                        </TR>
                      </TBODY>
                    </TABLE></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(1)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(2)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(3)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(4)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(5)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(6)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(7)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(8)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(9)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetGraphicHtml(10)%></TD>
                  <TD>单位（年）</TD>
                </TR>
              </TBODY>
            </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <div class="column">
    <div class="columntitle">访客年分配图表</div>
    <TABLE cellPadding=2 border=0>
      <TBODY>
        <TR>
          <TD>单位（人）</TD>
        </TR>
        <TR>
          <TD align=middle><TABLE align=center>
              <TBODY>
                <TR vAlign=bottom>
                  <TD vAlign=top><TABLE height=200 cellSpacing=0 cellPadding=0 align=center 
                  border=0>
                      <TBODY>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(8)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(7)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(6)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(5)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(4)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(3)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(2)%></TD>
                        </TR>
                        <TR>
                          <TD vAlign=top noWrap height=25><%=GetUniqueAccessNum(1)%></TD>
                        </TR>
                      </TBODY>
                    </TABLE></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(1)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(2)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(3)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(4)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(5)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(6)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(7)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(8)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(9)%></TD>
                  <TD noWrap align=middle width=20 
                background=../pic/tracker_background.gif height=216><%=GetUniqueGraphicHtml(10)%></TD>
                  <TD>单位（年）</TD>
                </TR>
              </TBODY>
            </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE>
  </div>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td>&nbsp;
              <asp:Button class="button" ID="ExportTracking" runat="server" Text="导出Excel"></asp:Button></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>