<%@ Page language="c#" trace="false" enableViewState="false" Inherits="SiteServer.CMS.Pages.InnerDigg" %>

<table><tr>
	<asp:PlaceHolder ID="phGood" runat="server">
    <td align="center">
    <a class="diggLink" href="javascript:undefined;" onclick="<%=ClickStringOfGood%>"><asp:Literal ID="ltlGoodText" runat="server"></asp:Literal></a>
    <span class="diggNum"><asp:Literal ID="ltlGoodNum" runat="server"></asp:Literal>票</span>
    </td>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phBad" runat="server">
    <td align="center">
    <a class="diggLink" href="javascript:undefined;" onclick="<%=ClickStringOfBad%>"><asp:Literal ID="ltlBadText" runat="server"></asp:Literal></a>
    <span class="diggNum"><asp:Literal ID="ltlBadNum" runat="server"></asp:Literal>票</span>
    </td>
    </asp:PlaceHolder>
</tr></table>