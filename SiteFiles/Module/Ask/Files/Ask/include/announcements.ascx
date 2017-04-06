<%@ Control Language="c#" Inherits="SiteServer.Ask.Controls.Announcements" %>

<div class="anno">
<strong class="black"><a href="announcements.aspx" target="_blank">系统公告区</a></strong>
<div class="box_con">
<ul class="f14px ln22">

<asp:Repeater ID="rptAnnouncement" runat="server">
<itemtemplate>
<li><asp:Literal ID="ltlItem" runat="server"></asp:Literal></li>
</itemtemplate>
</asp:Repeater>

</ul>
<p class="right orange"><a href="announcements.aspx" target="_blank">更多>></a></p>
</div>
</div>

<div class="hack5px"></div>