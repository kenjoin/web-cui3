<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.Modal.TableStyleValidateAdd" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title>设置表单验证</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td align="left" width="160"><bairong:help HelpText="设置是否对此字段启用表单验证" Text="是否启用表单验证：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList id="IsValidate" RepeatDirection="Horizontal" OnSelectedIndexChanged="Validate_SelectedIndexChanged" AutoPostBack="true" runat="server">
          <asp:ListItem Text="启用" />
          <asp:ListItem Text="不启用" Selected="True" />
        </asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phValidate" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="是否在表单界面中必须填写此项。" Text="是否为必填项：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsRequired" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" />
            <asp:ListItem Text="否" Selected="True" />
          </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phNum" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="设置可以添加的最小字符数" Text="最小字符数：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="MinNum" runat="server" />
            个字符
            <asp:RegularExpressionValidator
					ControlToValidate="MinNum"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
            （0代表不限制） </td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="设置可以添加的最大字符数" Text="最大字符数：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="MaxNum" runat="server" />
            个字符
            <asp:RegularExpressionValidator
					ControlToValidate="MaxNum"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
            （0代表不限制）</td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td align="left"><bairong:help HelpText="设置表单高级验证" Text="高级验证：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="ValidateType" OnSelectedIndexChanged="Validate_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList></td>
      </tr>
      <asp:PlaceHolder ID="phRegExp" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="设置验证正则表达式" Text="验证正则表达式：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" TextMode="MultiLine" id="RegExp" runat="server" /></td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td align="left"><bairong:help HelpText="设置验证失败提示信息" Text="验证失败提示信息：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" TextMode="MultiLine" id="ErrorMessage" runat="server" />
          <br />
          (不设置系统将使用默认提示)</td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td colspan="4" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
