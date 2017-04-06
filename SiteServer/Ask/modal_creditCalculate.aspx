<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.Ask.BackgroundPages.Modal.CreditCalculate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>设置总积分计算公式</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" cellspacing="2" width="95%" align="center">
    <tr>
      <td align="left">回答问题数(AnswerCount)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtAnswerCount" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtAnswerCount"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left">最佳答案数(BestAnswerCount)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtBestAnswerCount" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtBestAnswerCount"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"><asp:Literal ID="ltlNamePrestige" runat="server"></asp:Literal>(Prestige)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtPrestige" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtPrestige"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"><asp:Literal ID="ltlNameContribution" runat="server"></asp:Literal>(Contribution)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtContribution" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtContribution"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <tr>
      <td align="left"><asp:Literal ID="ltlNameCurrency" runat="server"></asp:Literal>(Currency)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtCurrency" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtCurrency"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    <asp:PlaceHolder ID="phExtCredit1" runat="server">
    <tr>
      <td align="left"><asp:Literal ID="ltlNameExtCredit1" runat="server"></asp:Literal>(ExtCredit1)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtExtCredit1" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtExtCredit1"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phExtCredit2" runat="server">
    <tr>
      <td align="left"><asp:Literal ID="ltlNameExtCredit2" runat="server"></asp:Literal>(ExtCredit2)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtExtCredit2" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtExtCredit2"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phExtCredit3" runat="server">
    <tr>
      <td align="left"><asp:Literal ID="ltlNameExtCredit3" runat="server"></asp:Literal>(ExtCredit3)：</td>
      <td align="left">× <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="txtExtCredit3" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="txtExtCredit3"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
    </tr>
    </asp:PlaceHolder>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
      <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
