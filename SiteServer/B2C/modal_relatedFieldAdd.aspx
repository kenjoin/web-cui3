<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.RelatedFieldAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tips">前缀及后缀为联动字段显示时在下拉列表之前及之后显示的文字，可以为空</div>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="联动字段的名称" Text="联动字段名称：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="RelatedFieldName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="RelatedFieldName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="RelatedFieldName"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="设置联动字段几级联动" Text="几级联动：" runat="server" ></bairong:help></td>
      <td align="left">
      	<asp:DropDownList ID="TotalLevel" AutoPostBack="true" OnSelectedIndexChanged="TotalLevel_SelectedIndexChanged" runat="server">
        	<asp:ListItem Text="一级" Value="1"></asp:ListItem>
            <asp:ListItem Text="二级" Value="2" Selected="true"></asp:ListItem>
            <asp:ListItem Text="三级" Value="3"></asp:ListItem>
            <asp:ListItem Text="四级" Value="4"></asp:ListItem>
            <asp:ListItem Text="五级" Value="5"></asp:ListItem>
        </asp:DropDownList>
      </td>
    </tr>
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="一级前缀字符串" Text="一级前缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Prefix1" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Prefix1"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="一级后缀字符串" Text="一级后缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Suffix1" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Suffix1"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <asp:PlaceHolder ID="phFix2" runat="server">
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="二级前缀字符串" Text="二级前缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Prefix2" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Prefix2"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="二级后缀字符串" Text="二级后缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Suffix2" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Suffix2"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phFix3" runat="server">
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="三级前缀字符串" Text="三级前缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Prefix3" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Prefix3"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="三级后缀字符串" Text="三级后缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Suffix3" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Suffix3"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phFix4" runat="server">
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="四级前缀字符串" Text="四级前缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Prefix4" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Prefix4"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="四级后缀字符串" Text="四级后缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Suffix4" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Suffix4"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phFix5" runat="server">
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="五级前缀字符串" Text="五级前缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Prefix5" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Prefix5"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="38%" align="left"><bairong:help HelpText="五级后缀字符串" Text="五级后缀字符串：" runat="server" ></bairong:help></td>
      <td width="62%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Suffix5" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Suffix5"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
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
