<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoContent" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<DIV class="item">
    <DIV class="item-top"></DIV>
  <table width="100%" border=0 cellspacing=0 class="partsmb">
    <tr>
      <td width="8"></td>
      <td><span id="ctl03_lblPermalink">
        <TABLE width="100%" border=0 cellSpacing=0>
          <TBODY>
            <TR vAlign=top>
              <TD><div>
                  <table cellspacing=0 border=0 width='100%' class="spAToolbar">
                    <tr>
                      <td><ul class="toolbar">
                          <!-- <li><a href="zoom.aspx"><asp:Image ImageUrl="~/sitefiles/bairong/icons/photo/add_note.gif" class="sppIcon" runat="server"></asp:Image>标注</a></li>-->
                          <li>
                            <asp:HyperLink ID="SetFavoriteLink" runat="server"></asp:HyperLink>
                          </li>
                          <li><a href="zoom.aspx?ContentID=<%=Request.QueryString["ContentID"]%>">
                            <asp:Image ImageUrl="~/sitefiles/bairong/icons/photo/zoom.gif" class="sppIcon" runat="server"></asp:Image>
                            所有尺寸</a></li>
                          <li>
                            <asp:LinkButton ID="DownloadLink" OnClick="DownloadLink_Click" runat="server">
                              <asp:Image ImageUrl="~/sitefiles/bairong/icons/download.gif" class="sppIcon" runat="server"></asp:Image>
                              下载</asp:LinkButton>
                          </li>
                          <li>
                            <asp:HyperLink ID="AddSetLink" runat="server">
                              <asp:Image ImageUrl="~/sitefiles/bairong/icons/photo/sets.gif" class="sppIcon" alt="添加到相册" runat="server"></asp:Image>
                              添加到相册</asp:HyperLink>
                          </li>
                          <li>
                            <asp:HyperLink ID="RotateLink" runat="server">
                              <asp:Image ImageUrl="~/sitefiles/bairong/icons/photo/rotate.gif" class="sppIcon" runat="server"></asp:Image>
                              翻转</asp:HyperLink>
                          </li>
                          <li Class="sppLast">
                            <asp:HyperLink ID="DeleteLink" runat="server">
                              <asp:Image ImageUrl="~/sitefiles/bairong/icons/delete.gif" class="sppIcon" runat="server"></asp:Image>
                              删除</asp:HyperLink>
                          </li>
                        </ul></td>
                      <td align="right"><ul>
                        </ul></td>
                    </tr>
                  </table>
                </div>
                <DIV class="bold" style="width:90%;margin-left:16px;margin-bottom:6px;font-size:14px;">
                  <bairong:AjaxTextEditor id="PhotoTitle" EmptyText="点击添加图片标题" runat="server" />
                </DIV>
                <DIV class=photoImgDiv style="margin-left:6px;"><%=GetImageHtml() %></DIV>
                <DIV id=About>
                  <DIV style="width:90%; margin-top:15px;margin-left:16px;font-size:14px;">
                    <bairong:AjaxTextEditor id="PhotoDescription" Multiple="true" EmptyText="点击添加图片介绍" runat="server" />
                  </DIV>
                  <br />
                  <space:ajaxLoading id="loadingComments" runat="server"></space:ajaxLoading>
                </DIV></TD>
              <TD style=" width:240px;" valign="top"><space:PhotoOwner id="PhotoOwner" runat="server" />
                <br />
                <space:PhotoStream ID="AllStream" runat="server"></space:PhotoStream>
                <br />
                <asp:PlaceHolder ID="SetPhotoStreamsPlaceHolder" Visible="false" runat="server"> 这幅图片也属于：<br />
                  <asp:Repeater ID="SetPhotoStreamsRepeater" runat="server">
                    <itemtemplate>
                      <table cellspacing="4">
                        <tr>
                          <td><asp:PlaceHolder ID="SetStreamPlaceHolder" runat="server" /></td>
                        </tr>
                      </table>
                    </itemtemplate>
                  </asp:Repeater>
                </asp:PlaceHolder>
                <br />
                <bairong:AjaxTagsList ID="TagsList" runat="server"></bairong:AjaxTagsList>
                <br />
                <P class=Privacy>
                  <space:PhotoSecurityItem id="SecurityItem" runat="server" />
                </P>
                <UL>
                  <LI class=Stats>被查看了<strong>0</strong>次(不包括你自己)
                </UL></TD>
            </TR>
          </TBODY>
        </TABLE>
        <script type="text/javascript" language="javascript" charset="utf-8" src="<%=RootUrl%>/livefiles/Pages/Comment/script.js"></script>
    	<space:ajaxLoading id="loadingCommentInput" runat="server"></space:ajaxLoading>
        </span></td>
      <td width="8"></td>
    </tr>
    <tr>
      <td colspan=3 height=8></td>
    </tr>
  </table>
</DIV>
</asp:content>
