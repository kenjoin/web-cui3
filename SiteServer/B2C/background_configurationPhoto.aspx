<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationPhoto" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">商品图片尺寸</div>
    <div class="tips">提示：在此设置商品详细页预览/放大图片的保存尺寸</div>
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="150" align="left">商品图片（小尺寸）：</td>
        <td align="left"> 宽：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" Width="50" id="PhotoSmallWidth" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="PhotoSmallWidth"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          (px)&nbsp;
          高：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" Width="50" id="PhotoSmallHeight" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="PhotoSmallHeight"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
        (px) </td>
      </tr>
      <tr>
        <td align="left">商品图片（中尺寸）：</td>
        <td align="left"> 宽：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" Width="50" id="PhotoMiddleWidth" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="PhotoMiddleWidth"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          (px)&nbsp;
          高：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" Width="50" id="PhotoMiddleHeight" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="PhotoMiddleHeight"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          (px) </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
