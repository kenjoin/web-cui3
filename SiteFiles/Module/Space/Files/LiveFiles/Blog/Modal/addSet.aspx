<%@ Page Language="C#" Inherits="SiteServer.Space.Blog.Pages.Modal.AddSet" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="TitleHolder" runat="server">
  <title>
  <bairong:NoTagText ID="SetTitle" runat="server" />
  </title>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<space:Hint id="Hint" runat="server" type="Error" />
<table width="100%" border="0" cellpadding="1" cellspacing="1">
  <tr>
    <td>类别名称:</td>
  </tr>
  <tr>
    <td><asp:TextBox ID="SetName" runat="server" style="width:250px;" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"></asp:TextBox>
      <asp:RequiredFieldValidator id="SetNameValidator"
	ControlToValidate="SetName"
	ErrorMessage=" *"
	Display="Dynamic"
	runat="server"
	/>
    </td>
  </tr>
  <tr>
    <td>类别简介:</td>
  </tr>
  <tr>
    <td><asp:TextBox ID="Description" runat="server" TextMode="MultiLine" Rows="4" style="width:300px;" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"></asp:TextBox>
    </td>
  </tr>
  <tr>
    <td><asp:Button ID="AddButton" OnClick="AddButton_Click" CssClass="button" runat="server"></asp:Button>&nbsp;&nbsp;<button ID="CancelButton" runat="server" class="button">取 消</button></td>
  </tr>
</table>
</asp:content>
