<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.Modal.CreditEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>编辑积分属性</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" cellspacing="2" width="95%" align="center">
    <tr>
      <td align="left"> 积分代号： </td>
      <td align="left"><asp:Literal ID="ltlCreditID" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td align="left"> 积分名称： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="180" id="txtCreditName" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtCreditName"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"> 积分单位： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="180" id="txtCreditUnit" runat="server"/></td>
    </tr>
    <tr>
      <td align="left"> 初始值： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="180" id="txtInitial" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtInitial"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
      </td>
    </tr>
    <tr>
      <td align="left"> 是否启用： </td>
      <td align="left">
      	<asp:RadioButtonList ID="rblIsUsing" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList>
      </td>
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
