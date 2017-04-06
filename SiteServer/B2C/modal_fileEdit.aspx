<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.FileEdit" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title><asp:Literal ID="MyTitle" runat="server"></asp:Literal></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td width="80" align="center"><bairong:help HelpText="文件名" Text="文件名：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" MaxLength="50" id="FileName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="FileName" ErrorMessage=" *" Display="Dynamic" runat="server" />
        &nbsp;
        <asp:PlaceHolder ID="PlaceHolder_Link" runat="server">
          <asp:HyperLink ID="Open" runat="server" Text="浏 览" Target="_blank"></asp:HyperLink>
          &nbsp;&nbsp;
          <asp:LinkButton ID="View" OnClick="View_OnClick" CausesValidation="false" runat="server" Text="属 性" />
          &nbsp;&nbsp; </asp:PlaceHolder></td>
    </tr>
    <tr>
      <td width="80" align="center"><bairong:help HelpText="文件编码" Text="文件编码：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList id="Charset" runat="server"></asp:DropDownList></td>
    </tr>
    <tr>
      <td width="80" align="center"><bairong:help HelpText="文件编辑方式" Text="编辑方式：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsPureText" AutoPostBack="true" OnSelectedIndexChanged="IsPureText_OnSelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="纯文本编辑" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="使用编辑器" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:PlaceHolder ID="PlaceHolder_PureText" runat="server">
          <asp:TextBox ID="FileContentTextBox" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server" TextMode="MultiLine" Width="540" Height="300"></asp:TextBox>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="PlaceHolder_TextEditor" Visible="false" runat="server">
          <site:TextEditor id="FileContent" width="540" height="300" runat="server"></site:TextEditor>
        </asp:PlaceHolder></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" text="保 存" onclick="Save_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" text="保存并关闭" onclick="SaveAndClose_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
