<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.MusicList" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV class="msc_newsongs-content">
<asp:PlaceHolder ID="phContents" runat="server">
  <TABLE class="newsong_list" cellSpacing="0" cellPadding="0" width="100%" border="0">
    <TBODY>
      <TR>
        <TD class="title_css" width="40%"><STRONG>歌曲</STRONG></TD>
        <TD class="singer_css" width="20%"><STRONG>类型</STRONG></TD>
        <TD width="30%"><STRONG>上传时间</STRONG></TD>
        <TD width="10%"><STRONG>评论</STRONG></TD>
      </TR>
      <asp:Repeater ID="MyRepeater" runat="server">
      <itemtemplate>
      <TR>
        <TD><DIV class="title_css"><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></DIV></TD>
        <TD><DIV class="singer_css"><asp:Literal ID="ltlType" runat="server"></asp:Literal></DIV></TD>
        <TD><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></TD>
        <TD><asp:Literal ID="ltlCommentCount" runat="server"></asp:Literal></TD>
      </TR>
      </itemtemplate>
      </asp:Repeater>
    </TBODY>
  </TABLE>
  <DIV style="CLEAR: both"><BR />
  </DIV>
  <DIV style="TEXT-ALIGN: right"><asp:HyperLink ID="hlMore" runat="server">查看更多</asp:HyperLink></DIV>
</asp:PlaceHolder>
<asp:Literal ID="ltlEmptyMessage" runat="server"></asp:Literal>
</DIV>
