<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.Words" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:PlaceHolder ID="phContents" runat="server">
<UL class="rssList">
<asp:Repeater ID="MyRepeater" runat="server">
	<itemtemplate>
    <LI class="rssItem"><asp:Literal ID="ltlContent" runat="server"></asp:Literal></LI>
    </itemtemplate>
</asp:Repeater>
</UL>
<DIV style="TEXT-ALIGN: right"><A class="rssReadAllLink" href="friends/word/default.aspx?#commentForm">发表留言</A>&nbsp;&nbsp;<A class="rssReadAllLink" href="friends/word/default.aspx">读取全部</A></DIV>
</asp:PlaceHolder>
<asp:Literal ID="ltlEmptyMessage" runat="server"></asp:Literal>