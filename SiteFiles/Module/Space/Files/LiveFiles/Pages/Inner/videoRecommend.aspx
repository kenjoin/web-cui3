<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.VideoRecommend" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:PlaceHolder ID="phVideoContent" runat="server">
  <div>
    <TABLE cellSpacing="1" cellPadding="1" width="100%" border="0">
      <TBODY>
        <TR>
          <TD align="left"><NOBR>歌名：<asp:Literal ID="ltlTitle" runat="server"></asp:Literal></NOBR></TD>
          <TD align="left"><NOBR>人气：<asp:Literal ID="ltlVisitCount" runat="server"></asp:Literal></NOBR></TD>
        </TR>
        <TR>
          <TD align="left"><NOBR><asp:Literal ID="ltlUtility" runat="server"></asp:Literal></NOBR></TD>
          <TD align="left"><NOBR>评论： <asp:Literal ID="ltlCommentCount" runat="server"></asp:Literal></NOBR></TD>
        </TR>
      </TBODY>
    </TABLE>
  </div>
  <div>
    <object id="MediaPlayer" codeBase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 type=application/x-oleobject" width="280" height="275" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6" standby="Loading Microsoft? Windows Media? Player components...">
      <param name="url" value="<%=FileUrl%>" width="280" height="275">
      <param name="AutoStart" value="1">
      <param name="enableContextMenu" value="0">
      <param name="enableErrorDialogs" value="0">
      <param name="playCount" value="1">
      <param name="fullScreen" value="0">
      <param name="enabled" value="-1">
    </object>
  </div>
  <div style="text-align:right; padding-top:5px;">
  	<asp:Literal ID="ltlComment" runat="server"></asp:Literal>
  </div>
</asp:PlaceHolder>
<asp:Literal ID="ltlEmptyMessage" runat="server"></asp:Literal>
