﻿<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTagStyleTemplate" %>
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
    <div class="columntitle">自定义模板</div>
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
      <td width="155" align="left"> 样式名称： </td>
      <td align="left"><asp:Literal ID="ltlStyleName" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td width="155" align="left"> 调用标签： </td>
      <td align="left"><asp:Literal ID="ltlElement" runat="server"></asp:Literal></td>
    </tr>
    <tr>
      <td width="155" align="left"> 模板显示方式： </td>
      <td align="left"><asp:RadioButtonList ID="rblIsTemplate" AutoPostBack="true" OnSelectedIndexChanged="rblIsTemplate_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phTemplate" runat="server">
    <tr>
        <td width="155" align="left"><bairong:help HelpText="生成默认模板" Text="生成默认模板：" runat="server" ></bairong:help></td>
        <td align="left"><asp:CheckBox ID="IsCreateTemplate" AutoPostBack="true" OnCheckedChanged="IsCreateTemplate_CheckedChanged" runat="server" Text="生成默认模板"></asp:CheckBox>
          (提示：可以点此生成默认模板！) </td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="模板内容" Text="模板内容：" runat="server" ></bairong:help></td>
        <td align="left">
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="100%" TextMode="MultiLine" ID="Content" runat="server" Rows="20" Wrap="false" />
          <asp:RequiredFieldValidator ControlToValidate="Content" ErrorMessage="模板内容必须填写，可以点击“生成默认模板”生成" Display="Dynamic" runat="server" />
        </td>
      </tr>
      <asp:PlaceHolder ID="phStyle" runat="server">
      <tr>
        <td width="155" align="left"><bairong:help HelpText="CSS样式" Text="CSS样式：" runat="server" ></bairong:help></td>
        <td align="left">
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="100%" TextMode="MultiLine" ID="Style" runat="server" Rows="10" Wrap="false" /></td>
      </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phScript" runat="server">
      <tr>
        <td width="155" align="left"><bairong:help HelpText="JS脚本" Text="JS脚本：" runat="server" ></bairong:help></td>
        <td align="left">
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="100%" TextMode="MultiLine" ID="Script" runat="server" Rows="10" Wrap="false" /></td>
      </tr>
      </asp:PlaceHolder>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <asp:Button class="button" id="Preview" text="预 览" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <input type=button class="button" onClick="location.href='<%=Request.QueryString["ReturnUrl"]%>';" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>