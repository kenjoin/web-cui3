<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundEncrypt" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">加密字符串</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="140" align="left"><bairong:help HelpText="需要加密的字符串" Text="字符串：" runat="server" ></bairong:help></td>
        <td width="69%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Rows="6" Columns="45" id="RawString" runat="server" />
          <asp:RequiredFieldValidator id="RequiredFieldValidator" ControlToValidate="RawString" ErrorMessage="*" Display="Dynamic"
                                    runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="加密后的字符串" Text="加密字符串：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label ID="MessageLabel" runat="server" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="加 密" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
