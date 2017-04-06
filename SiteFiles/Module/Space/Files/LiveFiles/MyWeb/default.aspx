<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.MyWeb.Pages.MyWebDefault" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<asp:PlaceHolder ID="NavExtras" runat="server">
	<space:MyWebListType runat="server" />
</asp:PlaceHolder>

  <div id="content">
    <DIV class="clearfix" id="innerContent">
      <DIV id="innerAppList">
        <space:MyWebNav runat="server" directoryName=""></space:MyWebNav>
      </DIV>
      <DIV id="appPage">
        <DIV id="innerAppPage">
          <table width="100%" cellspacing="0" cellpadding="0">
            <tr>
                <td width="100%" valign="top">
                    <space:MyWebArticles runat="server" />
                </td>
                <td class="SetsColumn" valign="top">
                    
                  <UL class=List id="TagCommand" runat="server">
                    <LI><space:UserLink NavigateUrl="myweb/tags/edit/_TagName_.aspx" isReplaceQueryString="True" runat="server"><div>编辑此标签</div></space:UserLink></LI>
                    <LI><space:UserLink NavigateUrl="myweb/tags/default.aspx?Delete=True" Querys="TagName" runat="server" onclick="return confirm(&quot;此操作将从所有收藏中删除此标签，确定吗？&quot;);"><div>删除此标签</div></space:UserLink></LI>
                  </UL>
                    <br />
                    <space:MyWebTags runat="server" />
                    <asp:Image ImageUrl="~/SiteFiles/bairong/Icons/spaceball.gif" width="200" height="1" runat="server"></asp:Image>
                </td>			
            </tr>
        </table>
        </DIV>
      </DIV>
    </DIV>
  </div>
</asp:content>