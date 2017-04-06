<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.Modal.FaceAdd" %>
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
  <div class="tips">文件夹名称是在论坛smile文件夹下的表情文件夹名称</div>
  <table cellpadding="2" cellspacing="2" width="95%" align="center">
    <tr>
      <td align="left"> 文件夹名称： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="180" id="tbFaceName" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="tbFaceName"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"> 表情显示名称： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="180" id="tbTitle" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="tbTitle"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"> 状态： </td>
      <td align="left"><asp:RadioButtonList ID="rblIsEnabled" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
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
