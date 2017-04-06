<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundAdminConfig" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">管理员选项</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="180" align="left"><bairong:help HelpText="选择管理员认证方式" Text="管理员认证方式：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsAdminActiveDirectory" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsAdminActiveDirectory_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phNormal" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="设置注册密码所要求的最小长度" Text="注册密码所要求的最小长度：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" Text="4" MaxLength="50" id="AdminMinPasswordLength" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="AdminMinPasswordLength"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <asp:RegularExpressionValidator
									runat="server"
									ControlToValidate="AdminMinPasswordLength"
									ValidationExpression="^[1-9]$"
									ErrorMessage="*"
									Display="Dynamic" /></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="新注册管理员密码加密方式" Text="密码加密方式：" runat="server" ></bairong:help></td>
          <td align="left"><asp:DropDownList ID="AdminPasswordFormat" runat="server"> </asp:DropDownList></td>
        </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phActiveDirectory" runat="server">
        <tr>
          <td colspan="2"><div class="tips">设置为域身份验证后请手动修改Web.Config文件，将认证方式改为：&lt;authentication mode=&quot;Windows&quot; /&gt;</div></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="设置域目录地址" Text="域目录地址：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="AdminADPath" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="AdminADPath"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="设置域名称" Text="域名称：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="AdminADDomain" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="AdminADDomain"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="设置域管理帐号" Text="域管理帐号：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="AdminADAccount" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="AdminADAccount"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="设置域管理密码" Text="域管理密码：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="AdminADPassword" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="AdminADPassword"
									ErrorMessage="*"
									Display="Dynamic"
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
