<%@ Control Language="c#" Inherits="SiteServer.Ask.Controls.Catalogs" %>

<div class="qnbox_l1 ques_class">
<strong class="white">问题分类</strong>


<p class="box_q_num black">
已解决问题:<asp:Literal ID="ltlDealCount" runat="server"></asp:Literal>&nbsp;&nbsp;
待解决问题:<asp:Literal ID="ltlNotDealCount" runat="server"></asp:Literal>
</p>

<asp:Repeater ID="rptCatalog" runat="server">
<itemtemplate>
<p class="tl c61bd"><asp:HyperLink ID="hlTitle" class="c61bd" runat="server"></asp:HyperLink></p>
<ul>
<asp:Literal ID="ltlItems" runat="server"></asp:Literal>
</ul>
<p class="clear"></p>
</itemtemplate>
</asp:Repeater>

<p class="hack5px"></p>
</div>