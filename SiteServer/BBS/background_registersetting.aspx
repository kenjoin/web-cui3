<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundRegisterSetting" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
  <div class="columntitle">注册设置</div>  <br>  
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
       <tr>
        <td width="170" align="left"><bairong:help HelpText="设置是否允许游客注册成为站点会员，你可以根据站点需求选择注册方式" Text="允许新用户注册：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="RegisterType" DataTextField="Text" DataValueField="Value" AutoPostBack="false"  RepeatDirection="Vertical" runat="server"> 
        </asp:RadioButtonList></td>
      </tr>
    <tr>
        <td width="170" align="left"><bairong:help HelpText="设置站点注册页的链接文字，默认为'注册'" Text="注册链接文字：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="txtRegisterLinkText" runat="server" />  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtRegisterLinkText"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
    <tr>
        <td width="170" align="left"><bairong:help HelpText="选择'无'用户可直接注册成功" Text="新用户注册验证：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="CheckType" DataTextField="Text" DataValueField="Value" AutoPostBack="true"  RepeatDirection="Vertical" runat="server" OnSelectedIndexChanged="CheckType_SelectedIndexChanged"> 
        </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phVerifyMailContent" runat="server" Visible="false">
        <tr>
          <td width="180" align="left"><bairong:help ID="Help2" HelpText="Email验证邮件内容" Text="Email验证邮件内容：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="RegisterVerifyMailContent" TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="360" Height="60" runat="server"></asp:TextBox>
            <br>
            （[UserName]代表用户名，[SiteUrl]代表网站地址，[VerifyUrl]代表用户注册验证地址，邮件内容必须包含[VerifyUrl]）</td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="同一IP在本时间间隔内将只能注册一个帐号，0 为不限制" Text="同一IP注册间隔限制：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="10" id="txtMinTimeWithIdentityIP" runat="server" /> 小时
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtMinTimeWithIdentityIP"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>  
      <tr>
        <td width="170" align="left"><bairong:help HelpText="同一 IP 地址在 24 小时内尝试注册的次数限制，建议在 30 - 100 范围内取值，0 为不限制" Text="同一IP24h允许注册次数：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="10" id="txtMaxCountWithIdentityIPIn24H" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtMaxCountWithIdentityIPIn24H"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr> 
       <tr>
        <td width="170" align="left"><bairong:help HelpText="可选择是否自动向新注册用户发送一条欢迎信息" Text="发送欢迎信息：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="SendWelcomeMessageType" AutoPostBack="true" DataTextField="Text" DataValueField="Value" OnSelectedIndexChanged="SendWelcomeMessageType_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server"> 
        </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phCheck" runat="server">
       <tr>
        <td width="170" align="left"><bairong:help HelpText="系统发送的欢迎信息的标题，不支持 HTML，不超过 75 字节" Text="欢迎信息标题：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="txtMessageTitle" runat="server" Text="{username}，您好，感谢您的注册，请阅读以下内容。" />  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtMessageTitle"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="系统发送的欢迎信息的内容。标题内容均支持变量替换" Text="欢迎信息内容：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  TextMode="MultiLine" Columns="60" Rows="7" MaxLength="500" id="txtMessageContent" runat="server" Text="尊敬的{username}，您已经注册成为{sitename}的会员，请您在发表言论时，遵守当地法律法规。
如果您有什么疑问可以联系管理员，Email: {adminemail}。


{bbname}
{time}" />  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtMessageContent"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
