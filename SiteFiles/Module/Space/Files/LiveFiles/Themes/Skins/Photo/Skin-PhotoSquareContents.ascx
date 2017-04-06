<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:DataList ID="MyDataList" runat="server" BorderWidth="0">
  <itemtemplate>
	<bairong:NoTagText id="Photo" runat="server" />
  </itemtemplate>
</asp:DataList>
<div class="separator"></div>
<div class="separator"></div>
<bairong:sqlpager id="MySqlPager" PagerStyle="NumericPages" PagingMode="NonCached" Unit="幅图片" runat="server" Width="100%" cellspacing=0 border=0> </bairong:sqlpager>