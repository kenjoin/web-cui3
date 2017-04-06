<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.TrackerIPView" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>内容点击详细记录</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="1" cellspacing="1" width="95%" align="center">
      <tr>
    
    <td align="center">
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
          <tr class="summary-title" style="height:25px;">
        
        
          <td>&nbsp;访问来源</td>
          <td align="left" style="width:205px;">比例</td>
          <td align="Center" style="width:50px;">&nbsp;访问数</td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
          <td>&nbsp;
            <asp:Literal ID="ItemTitle" runat="server"></asp:Literal></td>
          <td align="left" style="width:205px;"><TABLE height=8 cellSpacing=0 cellPadding=0 border=0>
              <TBODY>
                <TR>
                  <TD align=right><IMG src="../pic/tracker_transparency_bar_l.gif"></TD>
                  <TD><asp:Literal id="AccessNumBar" runat="server"></asp:Literal></TD>
                  <TD><IMG src="../pic/tracker_transparency_bar_r.gif"></TD>
                </TR>
              </TBODY>
            </TABLE></td>
          <td align="Center" style="width:45px;"><strong>
            <asp:Literal ID="ItemCount" runat="server"></asp:Literal>
            </strong></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
      </td>
    
      </tr>
    
    <tr>
      <td align="center"><asp:Button CssClass="button" id="ExportAndDelete" OnClick="ExportAndDelete_Click" Text="导出Excel并删除" Visible="false" runat="server" />
        &nbsp;&nbsp;
        <asp:Button CssClass="button" id="Export" OnClick="Export_Click" Text="导出Excel" runat="server" />
        &nbsp;&nbsp;
        <asp:Button CssClass="button" id="Cancel" Text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
