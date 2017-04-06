<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.TrackBack" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV id="messageWrapper"></DIV>
<DIV class="item-title">
  <H3 style="float:left">引用通告</H3>
  <div style="float:right"><a href="javascript:undefined;" onclick="this.parentNode.parentNode.parentNode.parentNode.style.display='none';return false" title="单击隐藏此项的引用通告">
    <space:ClientIcon ImageUrl="close.gif" runat="server" alt="关闭"></space:ClientIcon>
    </a>
    </space:ClientIcon>
    </a></div>
  <DIV class="clear"></DIV>
</DIV>
<DIV class="item-infoBox" style="margin-top:8px;"><SPAN class="item-infoBoxTit"> <STRONG>提示：</STRONG>“引用通告”是一种网络日志应用工具，它可以让网志作者知道有那些人看到自己的日志后撰写了与之有关的短文。</SPAN><BR />
  此项的引用通告URL是：
  <asp:Label ID="TrackBackPingUrl" runat="server"></asp:Label>
  <BR />
  <asp:PlaceHolder ID="ph_TrackBackUrls" runat="server">
  <div>引用此项的博客日志</div>
  <asp:Label ID="TrackBackUrls" runat="server"></asp:Label>
  </asp:PlaceHolder>
</DIV>
