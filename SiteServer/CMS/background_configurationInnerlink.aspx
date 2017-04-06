<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundConfigurationInnerLink" validateRequest="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
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
    <div class="columntitle">站内链接设置&nbsp;<a href="http://help.siteserver.cn/function/201/759.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看站内链接设置帮助" align="absmiddle"></a></div>
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td width="220" align="left"><bairong:help HelpText="选择是否启用站内链接功能" Text="是否启用站内链接功能：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsInnerLink" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsInnerLink_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phInnerLink" runat="server">
        <tr>
          <td width="220" align="left"><bairong:help HelpText="设置是否添加栏目名称为关键字" Text="是否设置栏目名称为关键字：" runat="server" ></bairong:help></td>
          <td align="left"><asp:DropDownList ID="IsInnerLinkByChannelName" runat="server" RepeatDirection="Horizontal"></asp:DropDownList></td>
        </tr>
        <tr>
          <td width="220" align="left"><bairong:help HelpText="设置站内链接显示时使用的字符串代码" Text="站内链接显示代码：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="56" MaxLength="200" id="InnerLinkFormatString" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="InnerLinkFormatString" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="InnerLinkFormatString"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
            <br>
            {0}代表链接地址，{1}代表站内链接关键字 </td>
        </tr>
        <tr>
          <td width="220" align="left"><bairong:help HelpText="站内链接数量限制（单个关键字）" Text="站内链接数量限制（单个关键字）：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="InnerLinkMaxNum" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="InnerLinkMaxNum" ErrorMessage="*" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
                                    ControlToValidate="InnerLinkMaxNum"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="*"
                                    runat="server"/>
            <asp:CompareValidator 
                                    ControlToValidate="InnerLinkMaxNum" 
                                    Operator="GreaterThan" 
                                    ValueToCompare="0" 
                                    Display="Dynamic"
                                    ErrorMessage="*"
                                    runat="server"/></td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
