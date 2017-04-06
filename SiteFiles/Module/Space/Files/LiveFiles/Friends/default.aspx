<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Friends.Pages.FriendsDefault" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Friends.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div id="content">
    <DIV class="clearfix" id="innerContent">
      <DIV id="innerAppList">
        <space:FriendsNav runat="server" directoryName=""></space:FriendsNav>
      </DIV>
      <DIV id="appPage">
        <DIV id="innerAppPage">
          <space:FriendsList RelatedUserType="Friends" runat="server" />
        </DIV>
      </DIV>
    </DIV>
  </div>
</asp:content>
