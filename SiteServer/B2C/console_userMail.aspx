<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.ConsoleUserMail" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body >
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">用户邮件群发</div>
    <table width="95%" align="center" cellpadding="2" cellspacing="2">
      <tr>
        <td width="140" align="left"><bairong:help HelpText="设置邮件发送对象：" Text="邮件发送对象：" runat="server" ></bairong:help></td>
        <td><asp:RadioButtonList ID="TypeList" RepeatDirection="Horizontal" OnSelectedIndexChanged="TypeList_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phGroup" runat="server">
        <tr>
          <td width="140" align="left"><bairong:help HelpText="选择接收邮件的用户组" Text="接收邮件的用户组：" runat="server" ></bairong:help></td>
          <td align="left"><asp:CheckBoxList ID="GroupIDList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"></asp:CheckBoxList></td>
        </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phUser" Visible="false" runat="server">
        <tr>
          <td width="140" align="left"><bairong:help HelpText="设置接收邮件的用户名列表" Text="用户名列表：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" Rows="4" TextMode="MultiLine" id="UserNameList" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="UserNameList" ErrorMessage="*" Display="Dynamic" runat="server" />
            （要发送的用户名列表，邮箱以“,”分割） </td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td align="left"><bairong:help HelpText="邮件标题" Text="邮件标题：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="MailTitle" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MailTitle" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MailTitle"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="邮件正文" Text="邮件正文：" runat="server" ></bairong:help></td>
        <td align="left"><bairong:BaiRongEditor id="Body" runat="server"></bairong:BaiRongEditor></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="发 送" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
