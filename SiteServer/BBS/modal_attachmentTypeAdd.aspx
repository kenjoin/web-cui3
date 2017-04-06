<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.Modal.AttachmentTypeAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" cellspacing="2" width="95%" align="center">
    <tr>
      <td align="left">附件后缀： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="180" id="tbFileExtName" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="tbFileExtName"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left">附件最大大小： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="tbMaxSize" runat="server"/>
K        
  <asp:RequiredFieldValidator
                        ControlToValidate="tbMaxSize"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
        (设置为0可禁止用户上传此类型附件)</td>
    </tr>
    <tr>
      <td></td>
      <td><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
