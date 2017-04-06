<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Blog.Pages.BlogSecurity" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server"> <span id="BlogViewId">
  <table width="100%" border=0 cellspacing=0 class="partsmb">
    <tr>
      <td width='8'><img width=8 height=1></td>
      <td class="bvBody" align="left"><TABLE cellspacing="5" cellpadding="5">
          <TBODY>
            <TR>
              <TD align="left" valign="top" id=Hint style="width:160px;"><P><br />
                  这里您可以设置您的日记的访问权限、谁可以评论! <br />
                  <!--<br />
                  您可以在这里进行<a href="../settings/photoSettings.aspx">全局设置图片的默认安全属性</a> --></P></TD>
              <TD style="width:30px;"></TD>
              <TD valign="top" style="width:220px;"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><H3 style="MARGIN-TOP: 0px"><nobr>谁可以查看这篇日记?</nobr></H3></td>
                  </tr>
                  <tr>
                    <td><asp:RadioButtonList ID="SecurityType" runat="server"></asp:RadioButtonList>
                      <br />
                    </td>
                  </tr>
                  <tr>
                    <td><H3><nobr>是否允许评论这篇日记?</nobr></H3></td>
                  </tr>
                  <tr>
                    <td><asp:CheckBox ID="IsCommentable" Checked="true" Text="允许评论" runat="server"></asp:CheckBox></td>
                  </tr>
                </table></TD>
              <TD valign="top"><div><h4><%=GetTitle()%></h4></div>
              
              <%--<div style="MARGIN-TOP: 0px"><%=GetImageHtml()%></div>--%>
              
              </TD>
            </TR>
          </TBODY>
        </TABLE></td>
      <td width='8'><img  width=8 height=1></td>
    </tr>
  </table>
  <div class="SaveRow">
    <asp:Button ID="saveButton" onclick="Submit_OnClick" runat="server" Text="保 存" CssClass="button"></asp:Button>
    &nbsp;
    <asp:Button ID="cancelButton" CausesValidation="false" OnClick="Cancel_OnClick" runat="server" Text="取 消" CssClass="button"></asp:Button>
  </div>
  </span> </asp:content>