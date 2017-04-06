<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<DIV id="entryList">
  <asp:DataList ID="MyDataList" Width="100%" runat="server">
    <itemtemplate>
      <DIV class="item">
        <DIV class="item-top"></DIV>
        <DIV class="item-title">
          <H3>
            &nbsp;
            <asp:Literal id="ltlUserName" runat="server"></asp:Literal>&nbsp;<asp:Literal id="ltlBlogTitle" runat="server"></asp:Literal>
          </H3>
          <DIV class="item-label">
          </DIV>
          <DIV class="clear"></DIV>
        </DIV>
        <DIV class="item-info">
          <asp:Literal id="ltlBlogContent" runat="server"></asp:Literal>
        </DIV>
      </DIV>
    </itemtemplate>
  </asp:DataList>
  <DIV class="item-bottom"></DIV>
  <DIV></DIV>
</DIV>
<table width="100%" border=0 cellspacing=0 class="partsmb">
  <tr>
    <td width='8'></td>
    <td class="bvBody"><bairong:sqlpager id="MySqlPager" PagerStyle="NumericPages" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0> </bairong:sqlpager>
    </td>
    <td width='8'></td>
  </tr>
</table>
