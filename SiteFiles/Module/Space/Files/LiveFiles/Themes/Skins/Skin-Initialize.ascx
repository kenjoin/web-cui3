<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left"><table cellpadding="5" cellspacing="5" border="0">
        <tr>
          <td colspan="2" align="center" height="28"><strong>请设置您的空间信息，以下均为必填项。</strong></td>
        </tr>
        <tr>
          <td width="167">空间名称:</td>
          <td><asp:textbox id="tbSpaceTitle" MaxLength="64" runat="server" CssClass="text" columns="40"></asp:textbox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbSpaceTitle">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
          <td width="167">空间简介:</td>
          <td><asp:textbox id="tbSpaceDesc" MaxLength="64" TextMode="MultiLine" CssClass="text" runat="server" columns="40" Rows="3"></asp:textbox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbSpaceDesc">*</asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
          <td height="30" colspan="2" align="center" valign="middle"><asp:Button ID="btnNext" Text="开通空间，下一步" CssClass="button" runat="server" />
          </td>
        </tr>
      </table></td>
  </tr>
</table>
