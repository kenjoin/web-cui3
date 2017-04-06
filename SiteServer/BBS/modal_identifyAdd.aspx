<%@ Page Language="C#" AutoEventWireup="true" Inherits="SiteServer.BBS.BackgroundPages.Modal.IdentifyAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>
<asp:Literal ID="MyTitle" runat="server"></asp:Literal>
</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<bairong:Message runat="server"></bairong:Message>
<form id="myForm" runat="server">
  <table cellpadding="3" cellspacing="3" width="95%" align="center">
    <tr>
      <td align="left"> 图章名称： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                    Width="220" ID="tbTitle" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbTitle"
                    ErrorMessage="*" Display="Dynamic" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"> 图章： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                    Width="220" ID="tbStampUrl" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbStampUrl"
                    ErrorMessage="*" Display="Dynamic" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"> 图标： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                    Width="220" ID="tbIconUrl" runat="server" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" ID="Ok" Text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" ID="Cancel" Text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>
