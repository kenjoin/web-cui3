<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<DIV id="entryList">
  <asp:DataList ID="MyDataList" Width="100%" runat="server">
    <itemtemplate>
      <DIV class="item">
        <DIV class="item-top"></DIV>
        <DIV class="item-title">
          <H3>
            <bairong:NoTagText id="ToggleVisible" runat="server" />
            &nbsp;
            <bairong:NoTagText id="BlogTitle" runat="server" />
          </H3>
          <DIV class="item-label">
          </DIV>
          <DIV class="clear"></DIV>
        </DIV>
        <DIV class="item-info" id="<%# DataBinder.Eval(Container.DataItem, "ID") %>">
          <bairong:NoTagText id="BlogContent" runat="server" />
          <asp:PlaceHolder ID="BlogLinksPlaceHolder" runat="server"></asp:PlaceHolder>
        </DIV>
      </DIV>
    </itemtemplate>
  </asp:DataList>
  <DIV class="item-bottom"></DIV>
  <DIV></DIV>
</DIV>
<table width="100%" border=0 cellspacing=0>
  <tr>
    <td width='8'></td>
    <td><bairong:sqlpager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
    <td width='8'></td>
  </tr>
</table>
