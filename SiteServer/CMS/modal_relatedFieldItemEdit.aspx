<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.RelatedFieldItemEdit" Trace="false"%>
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
  <table cellpadding="3" cellspacing="3" width="95%" align="center">
    <tr align="left">
      <td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center; color:#FF0000" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"><nobr>
        <bairong:help HelpText="字段项名称" Text="字段项名：" runat="server" ></bairong:help>
        </nobr></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="160" id="ItemName" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="ItemName"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"><nobr>
        <bairong:help HelpText="字段项值" Text="字段项值：" runat="server" ></bairong:help>
        </nobr></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="160" id="ItemValue" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="ItemValue"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
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
