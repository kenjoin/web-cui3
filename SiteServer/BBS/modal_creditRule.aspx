<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.Modal.CreditRule" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>积分策略设置</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" cellspacing="2" width="95%" align="center">
    <tr>
      <td align="left"> 动作： </td>
      <td align="left"><asp:Literal ID="ltlRuleName" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td align="left"> 周期： </td>
      <td align="left"><asp:RadioButtonList ID="PeriodType" OnSelectedIndexChanged="PeriodType_SelectedIndexChanged" AutoPostBack="true" RepeatColumns="2" runat="server"></asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phPeriodCount" runat="server">
    <tr>
      <td align="left"> 间隔时间： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="PeriodCount" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="PeriodCount"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="left"> 奖励次数： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="MaxNum" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="MaxNum"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
        (0代表不限制次数)</td>
    </tr>
    <tr>
      <td align="left"> <asp:Literal ID="ltlNamePrestige" runat="server"></asp:Literal>： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="Prestige" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="Prestige"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"> <asp:Literal ID="ltlNameContribution" runat="server"></asp:Literal>： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="Contribution" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="Contribution"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"> <asp:Literal ID="ltlNameCurrency" runat="server"></asp:Literal>： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="Currency" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="Currency"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <asp:PlaceHolder ID="phExtCredit1" runat="server">
    <tr>
      <td align="left"> <asp:Literal ID="ltlNameExtCredit1" runat="server"></asp:Literal>： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="ExtCredit1" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="ExtCredit1"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phExtCredit2" runat="server">
    <tr>
      <td align="left"> <asp:Literal ID="ltlNameExtCredit2" runat="server"></asp:Literal>： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="ExtCredit2" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="ExtCredit2"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phExtCredit3" runat="server">
    <tr>
      <td align="left"> <asp:Literal ID="ltlNameExtCredit3" runat="server"></asp:Literal>： </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="80" id="ExtCredit3" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="ExtCredit3"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    </asp:PlaceHolder>
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
