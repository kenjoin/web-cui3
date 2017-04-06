<%@ Page SmartNavigation="False" Language="C#"  Inherits="SiteServer.Space.Blog.Pages.BlogContent" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <DIV class="item">
    <DIV class="item-top"></DIV>
    <DIV id="entry">
      <DIV class="item-title">
        <H3>
          <bairong:NoTagText ID="Title" runat="server"></bairong:NoTagText>
          <bairong:NoTagText ID="Source" runat="server"></bairong:NoTagText>
        </H3>
        <DIV class="item-label"></DIV>
        <DIV class="clear"></DIV>
      </DIV>
      <DIV class="item-body">
        <DIV class="item-content" style="padding-top:15px; padding-bottom:15px;">
          <bairong:NoTagText ID="Content" runat="server"></bairong:NoTagText>
          <DIV class="clear"></DIV>
        </DIV>
        <DIV class="item-info">
          <bairong:AjaxTagsList ID="TagsList" runat="server"></bairong:AjaxTagsList>
          <br />
          <space:BlogLinks ID="BlogLinks" IsContentPage="true" runat="server"></space:BlogLinks>
          <table class='nav'>
              <tr>
                <td valign="middle"><asp:HyperLink ID="PreviousIcon" runat="server"></asp:HyperLink>
                </td>
                <td nowrap valign="middle">&nbsp;
                  <asp:HyperLink ID="PreviousLink" runat="server"></asp:HyperLink>
                </td>
                <td nowrap style="width:100%" valign="middle" align="right"><asp:HyperLink ID="NextLink" runat="server"></asp:HyperLink>
                  &nbsp; </td>
                <td valign="middle"><asp:HyperLink ID="NextIcon" runat="server"></asp:HyperLink>
                </td>
              </tr>
            </table>
          <space:ajaxLoading id="loadingComments" runat="server"></space:ajaxLoading>
        </DIV>
      </DIV>
    </DIV>
    <DIV id="tagEntryList" style="DISPLAY: none"></DIV>
    <script type="text/javascript" language="javascript" charset="utf-8" src="<%=RootUrl%>/livefiles/Pages/Comment/script.js"></script>
    <space:ajaxLoading id="loadingCommentInput" runat="server"></space:ajaxLoading>
    <asp:Literal ID="ltlCannotComments" Text="作者已禁止网友对该文进行评论" Visible="false" runat="server"></asp:Literal>
    <DIV class="item-bottom"></DIV>
  </DIV>
</asp:content>
