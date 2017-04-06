<%@ Page Language="C#"  Inherits="SiteServer.Space.Space.Pages.UserInfoSettings" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">

<table width="100%" border="0" cellpadding="5" cellspacing="15">
  <tr>
    <td width="62"	class="SSDs"><strong> 用户名: </strong></td>
    <td	class="SSDs" width="370"><bairong:NoTagText id="UserName" runat="server" /></td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong> 显示名称: </strong></td>
    <td	class="SSDs" width="370"><asp:TextBox ID="DisplayName" MaxLength="128" style="width:128px;" runat="server" CssClass="text"></asp:TextBox></td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong>性别:</strong></td>
    <td	class="SSDs"><asp:RadioButtonList ID="Gender" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong>生日:</strong></td>
    <td	class="SSDs" width="370"><asp:DropDownList ID="BirthYear" runat="server"></asp:DropDownList>
      年&nbsp;&nbsp;
      <asp:DropDownList ID="BirthMonth" runat="server"></asp:DropDownList>
      月&nbsp;&nbsp;
      <asp:DropDownList ID="BirthDay" runat="server"></asp:DropDownList>
      日</td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong> 职业: </strong></td>
    <td	class="SSDs" width="370"><asp:TextBox ID="Profession" MaxLength="128" style="width:260px;" runat="server" CssClass="text"></asp:TextBox></td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong> 所在位置: </strong></td>
    <td	class="SSDs" width="370"><nobr>
      <asp:TextBox ID="Location" MaxLength="128" style="width:128px;" runat="server" CssClass="text"></asp:TextBox>
      </nobr> </td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong> 个人介绍: </strong></td>
    <td	class="SSDs" width="370"><asp:TextBox ID="Bio" TextMode="MultiLine" runat="server" style="width:360px;" Rows="6" CssClass="text"></asp:TextBox></td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong> 电子邮件: </strong></td>
    <td	class="SSDs" width="678"><asp:TextBox ID="Email" MaxLength="128" style="width:160px;" runat="server" CssClass="text"></asp:TextBox><asp:RegularExpressionValidator ControlToValidate="Email" 
			ValidationExpression="(\w[0-9a-zA-Z_-]*@(\w[0-9a-zA-Z-]*\.)+\w{2,})" 
			ErrorMessage=" 邮件格式不正确" Display="Dynamic" runat="server"/></td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong> QQ号码: </strong></td>
    <td	class="SSDs" width="678"><asp:TextBox ID="QQ" MaxLength="128" style="width:160px;" runat="server" CssClass="text"></asp:TextBox><asp:RegularExpressionValidator ControlToValidate="QQ" 
			ValidationExpression="([0-9]*)" 
			ErrorMessage=" QQ号码格式不正确" Display="Dynamic" runat="server"/></td>
  </tr>
  <tr>
    <td width="62"	class="SSDs"><strong> 联系电话: </strong></td>
    <td	class="SSDs" width="678"><asp:TextBox ID="Telephone" MaxLength="128" style="width:160px;" runat="server" CssClass="text"></asp:TextBox><asp:RegularExpressionValidator ControlToValidate="Telephone" 
			ValidationExpression="([0-9\-]*)" 
			ErrorMessage=" 联系电话格式不正确" Display="Dynamic" runat="server"/></td>
  </tr>
</table>
<table width="100%" border=0 cellpadding="0" cellspacing=0 style="width:100%;">
  <tr>
    <td align="center">
          <asp:Button ID="saveButton" runat="server" OnClick="SaveButton_Click" Text="保 存" CssClass="button"></asp:Button>
          &nbsp;&nbsp;
          <asp:Button ID="cancelButton" runat="server" OnClick="CancelButton_Click" Text="取 消" CssClass="button"></asp:Button>
    </td>
  </tr>
</table>

</asp:content>