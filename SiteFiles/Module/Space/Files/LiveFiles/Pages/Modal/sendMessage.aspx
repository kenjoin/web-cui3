<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Modal.SendMessage" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="TitleHolder" runat="server">
  <title>发送站内消息</title>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
  <tbody>
    <tr>
      <td>发送至:</td>
    </tr>
    <tr>
      <td><asp:TextBox ID="ToUserName" style="width:200px;" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator
		ControlToValidate="ToUserName"
		ErrorMessage="*"
		Display="Dynamic"
		runat="server"/>
        </td>
    </tr>
    <tr>
      <td>内 容:</td>
    </tr>
    <tr>
      <td><asp:TextBox ID="MessageBody" TextMode="MultiLine" Rows="12" style="width:360px;" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator
		ControlToValidate="MessageBody"
		ErrorMessage="*"
		Display="Dynamic"
		runat="server"/>
        </td>
    </tr>
    <tr>
      <td><button ID="AddButton" OnServerClick="AddButton_ServerClick" CausesValidation="true" runat="server" class="button">发送</button>&nbsp;&nbsp;<button ID="CancelButton" runat="server" class="button">取消</button></td>
    </tr>
  </tbody>
</table>
</asp:content>
