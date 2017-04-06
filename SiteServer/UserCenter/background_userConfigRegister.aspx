<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserConfigRegister" %>
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
    <div class="columntitle">用户注册设置</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="180" align="left"><bairong:help HelpText="选择&quot;否&quot;将禁止新用户注册, 但不影响过去已注册的会员的使用" Text="允许新用户注册：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsRegisterAllowed" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="180" align="left"><bairong:help HelpText="选择&quot;否&quot; ,一个 Email 地址只能注册一个用户名" Text="允许同一Email注册不同用户：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsEmailDuplicated" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="180" align="left"><bairong:help HelpText="用户名称保留关键字" Text="用户名称保留关键字：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox ID="ReservedUserNames" TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="360" Height="60" runat="server"></asp:TextBox>
          （使用&ldquo;,&rdquo;分隔多个用户名） </td>
      </tr>
      <tr>
        <td width="180" align="left"><bairong:help HelpText="选择&quot;无&quot;用户可直接注册成功;选择&quot;Email 验证&quot;将向用户注册 Email 发送一封验证邮件以确认邮箱的有效性;选择&quot;人工审核&quot;将由管理员人工逐个确定是否允许新用户注册
        " Text="新用户注册验证：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="RegisterVerifyType" AutoPostBack="true" OnSelectedIndexChanged="RegisterVerifyType_SelectedIndexChanged" runat="server"></asp:DropDownList>
          <br></td>
      </tr>
      <tr>
        <td width="180" align="left"><bairong:help HelpText="注册成功欢迎消息内容" Text="注册成功欢迎消息内容：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox ID="RegisterWelcome" TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="360" Height="60" runat="server"></asp:TextBox></td>
      </tr>
      <asp:PlaceHolder ID="phVerifyMailContent" runat="server">
        <tr>
          <td width="180" align="left"><bairong:help HelpText="Email验证邮件内容" Text="Email验证邮件内容：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="RegisterVerifyMailContent" TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="360" Height="60" runat="server"></asp:TextBox>
            <br>
            （[UserName]代表用户名，[SiteUrl]代表网站地址，[VerifyUrl]代表用户注册验证地址，邮件内容必须包含[VerifyUrl]）</td>
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
