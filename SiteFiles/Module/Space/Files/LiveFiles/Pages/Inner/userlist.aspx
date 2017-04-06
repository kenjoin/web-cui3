<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.UserList" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV class="fresh_blogs-content">
  <DIV>
    <!--<DIV style="TEXT-ALIGN: center"><A href="http://blog.sohu.com/morefreshblogs.html" target="_blank">最近更新的200位博客</A></DIV>
    <HR />-->
    <asp:PlaceHolder ID="phContents" runat="server">
    <asp:Repeater ID="MyRepeater" runat="server">
      <itemtemplate>
        <DIV class="collect">
          <DIV class="collectIco">
            <asp:HyperLink ID="hlImage" runat="server" Target="_blank">
              <asp:Image ID="imgUserIcon" Height="48" Width="48" runat="server" ImageAlign="Middle"></asp:Image>
            </asp:HyperLink>
          </DIV>
          <asp:HyperLink ID="hlUserName" runat="server" Target="_blank"><SPAN>
            <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
            </SPAN></asp:HyperLink>
        </DIV>
      </itemtemplate>
    </asp:Repeater>
    <DIV style="CLEAR: both"></DIV>
    <DIV style="TEXT-ALIGN: right"><asp:HyperLink ID="hlMore" cssclass="rssReadAllLink" runat="server">查看更多</asp:HyperLink></DIV>
    </asp:PlaceHolder>
    <asp:Literal ID="ltlEmptyMessage" runat="server"></asp:Literal>
  </DIV>
</DIV>
