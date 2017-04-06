<%@ Control Language="c#" Inherits="SiteServer.Ask.Controls.Rank" %>

<div class="qnbox_r1">
<strong class="black"><a href="ranklist.aspx" target="_blank">总积分排行</a></strong>
<p class="shadow"></p>
<dl class="ph_list">
<dt class="grey b"><span class="sp1">用户名</span><span class="sp2">积分</span></dt>
   <asp:Repeater ID="rptRank" runat="server">
    <ItemTemplate>
      <asp:Literal ID="ltlItem" runat="server"></asp:Literal></ItemTemplate>
    </asp:Repeater>
</dl>
<p class="hack5px"></p>
<p class="right orange"><a href="ranklist.aspx" target="_blank">更多>></a></p>
<p class="hack5px"></p>
</div>

<div class="shadow"></div>
<div class="hack3px"></div>