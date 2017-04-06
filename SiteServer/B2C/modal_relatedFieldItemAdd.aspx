<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.RelatedFieldItemAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title><asp:Literal ID="MyTitle" runat="server"></asp:Literal></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="95%" align="center">
    <tr>
      <td colspan="2" align="left" class="tips"> 每一行为一个选项，如果显示项与值不同可以用“|”隔开，左边为显示项，右边为值</td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="width:250px;height:230px" TextMode="MultiLine" id="ItemNames" runat="server"/>
        <asp:RequiredFieldValidator ControlToValidate="ItemNames" ErrorMessage="*" Display="Dynamic" runat="server"/>
      </td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
