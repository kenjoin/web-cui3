<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<!--<DIV class="feedTitle">
  <UL id="feedTabs">
    <LI class="on" feedType="-1"> <A onclick="Mini.Post.feedMore(-1);" href="javascript:void(0)">全部</A> </LI>
    <LI feedType="33"> <A onclick="Mini.Post.feedMore(33);" href="javascript:void(0)">微博</A> </LI>
    <LI feedType="1"> <A onclick="Mini.Post.feedMore(1);" href="javascript:void(0)">日志</A> </LI>
    <LI feedType="3"> <A onclick="Mini.Post.feedMore(3);" href="javascript:void(0)">相册</A> </LI>
    <LI feedType="4"> <A onclick="Mini.Post.feedMore(4);" href="javascript:void(0)">视频</A> </LI>
    <LI feedType="19"> <A onclick="Mini.Post.feedMore(19);" href="javascript:void(0)">分享</A> </LI>
  </UL>
  <DIV class="option"> <a href="javascript:undefined;"><img src="../../SiteFiles/bairong/Icons/lightbox.gif" align="absmiddle" />&nbsp;随便看看</a> </DIV>
</DIV>-->
<UL id="postList" class="feedList">
  <DIV>
    <asp:Repeater ID="PostList" runat="server">
      <itemtemplate>
        <asp:Literal ID="ltlFeedItem" runat="server"></asp:Literal>
      </itemtemplate>
    </asp:Repeater>
  </DIV>
</UL>
