<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<div class="ThinCase" id="NoContents" runat="server">
</div>
<table width="100%" border=0 cellspacing=0 id="HasContents" runat="server">
  <tr>
    <td width='8'></td>
    <td><CENTER>
        <asp:DataList ID="MyDataList" ItemStyle-VerticalAlign="top" ItemStyle-HorizontalAlign="left" Width="100%" RepeatColumns="1" runat="server">
          <itemtemplate>
            <table cellspacing="0" class="RecentActivity">
              <tr valign="top">
                <td class="Object">
                    <bairong:NoTagText id="Photo" runat="server" /><br />
                  <nobr>
                  <bairong:NoTagText id="LightboxView" runat="server" />
                  </nobr>
                  <img width="120" height="1" alt="" style="border: none;" /> </td>
                <td class="Guts"><table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <td style="width:400px;" valign="top"><h2>
                          <bairong:NoTagText id="PhotoTitle" runat="server" />
                        </h2>
						<nobr><small><bairong:NoTagText id="ViewCount" runat="server" />&nbsp;|&nbsp;<bairong:NoTagText id="CommentCount" runat="server" /></small></nobr>
                      </td>
                      <td><asp:PlaceHolder ID="PhotoOwnerPlaceHolder" runat="server"></asp:PlaceHolder></td>
                    </tr>
                  </table>
				  <asp:Repeater ID="CommentsRepeater" runat="server">
				  	<itemtemplate>
					  <table class="NewComments" cellspacing="0" width="100%">
						<tr valign="top">
						  <td>
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td><asp:HyperLink ID="CommentorIconLink" Target="_blank" runat="server"><asp:Image ID="CommentorIcon" Height="24" Width="24" runat="server"></asp:Image></asp:HyperLink><asp:Image ID="CommentIcon" ImageUrl="~/sitefiles/bairong/icons/comment.gif" runat="server"></asp:Image>&nbsp;<b><bairong:NoTagText id="Commentor" runat="server" />的评论:</b></td>
							  </tr>
							  <tr>
								<td><bairong:NoTagText id="MyComment" runat="server" /></td>
							  </tr>
							</table>
						   </td>
						  <td><small><bairong:NoTagText id="CommentDateTime" runat="server" /></small></td>
						</tr>
						<tr>
						  <td width="100%"><img alt="spacer" width="1" height="1" style="border: none;" /></td>
						  <td><img alt="spacer" width="250" height="1" style="border: none;" /></td>
						</tr>
					  </table>
				  	</itemtemplate>
				  </asp:Repeater>
				</td>
              </tr>
            </table>
          </itemtemplate>
        </asp:DataList>
      </CENTER>
      </td>
    <td width='8'></td>
  </tr>
</table>
