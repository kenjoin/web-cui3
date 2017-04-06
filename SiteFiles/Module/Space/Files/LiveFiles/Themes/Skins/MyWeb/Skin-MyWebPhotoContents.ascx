<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<asp:DataList ID="MyDataList" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="left" ItemStyle-Width="120" runat="server" RepeatDirection="Horizontal">
  <itemtemplate>
    <asp:Literal id="ltlPhoto" runat="server"></asp:Literal><br />
    <asp:Literal id="ltlUserName" runat="server"></asp:Literal>
  </itemtemplate>
</asp:DataList>

<bairong:sqlpager id="MySqlPager" PagerStyle="NumericPages" PagingMode="NonCached" Unit="幅图片" runat="server" Width="100%" cellspacing=0 border=0> </bairong:sqlpager>