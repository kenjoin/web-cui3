<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Friends.Pages.FriendsVisitors" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Friends.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div id="content">
    <DIV class="clearfix" id="innerContent">
      <DIV id="appList">
        <DIV id="innerAppList">
          <space:FriendsNav runat="server" directoryName="visitors"></space:FriendsNav>
        </DIV>
      </DIV>
      <DIV id="appPage">
        <DIV id="innerAppPage">
          <table width="100%" cellspacing="0" cellpadding="0">
            <tr>
              <td width="100%" valign="top"><space:FriendsList RelatedUserType="Visitors" runat="server" />
              </td>
            </tr>
          </table>
        </DIV>
      </DIV>
    </DIV>
  </div>
</asp:content>
