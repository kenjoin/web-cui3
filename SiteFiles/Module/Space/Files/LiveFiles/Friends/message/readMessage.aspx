<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Friends.Pages.FriendsReadMessage" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Friends.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div id="content">
    <DIV class="clearfix" id="innerContent">
      <DIV id="appList">
        <DIV id="innerAppList">
          <space:FriendsNav runat="server" directoryName="message"></space:FriendsNav>
        </DIV>
      </DIV>
      <DIV id="appPage">
        <DIV id="innerAppPage">          <br />
          <table cellspacing="10" style="margin-left:20px;" cellpadding="10" width="100%">
            <tr>
              <td width="110">消息发送人： </td>
              <td><bairong:NoTagText id="FromUserName" runat="server" />
              </td>
              <td width="5"></td>
            </tr>
            <tr>
              <td width="110">消息内容： </td>
              <td><bairong:NoTagText id="MessageBody" runat="server" />
              </td>
              <td width="5"></td>
            </tr>
          </table>
          <br />
          <table cellspacing="0" style="margin-left:20px;" cellpadding="0" width="100%">
            <tr>
              <td><p><img class="sppIcon" src="<%=RootUrl%>/livefiles/images/icon/return.gif" /><a href="./">返回消息中心</a><asp:Literal ID="ltlWriteBack" runat="server"></asp:Literal>&nbsp;&nbsp;<img class="sppIcon" src="<%=RootUrl%>/livefiles/images/icon/delete.gif" /><a runat="server" id="Delete">删除此消息</a> </p>
              <p>&nbsp;</p></td>
              <td width="5"></td>
            </tr>
          </table>
        </DIV>
      </DIV>
    </DIV>
  </div>
</asp:content>
