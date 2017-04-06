<%@ Control Language="c#" Inherits="SiteServer.Ask.Controls.WeekStar"  %>

<div class="qnbox_r1 star">
<strong class="black"><a href="starlist.aspx" target="_blank">本周问答之星</a></strong>
<p class="shadow"></p>

<asp:PlaceHolder ID="phstar" runat="server">
<p class="c72bd">
    <asp:Literal ID="ltlUserName" runat="server"></asp:Literal></p>
<p class="black"">专精领域：<span class="c72bd">
    <asp:Literal ID="ltlCatalog" runat="server"></asp:Literal>
</span></p>
<p class="black">精选回答：</p>
<UL class="ln20">
 <asp:Literal ID="ltlItem" runat="server"></asp:Literal></ItemTemplate>
</UL>
</asp:PlaceHolder>
<p class="right orange"><a href="starlist.aspx" target="_blank">历届问答之星>></a></p>
<p class="clear"></p>
</div>
<div class="shadow"></div>
<div class="hack3px"></div>
