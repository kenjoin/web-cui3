<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundSSOAppAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle"><asp:Literal id="literalTitle" runat="server" />应用</div>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td colspan="2"><div class="tips">本设置在系统安装时将自动生成，一般情况请勿修改。</div></td>
      </tr>
      <tr>
          <td width="120" height="25" align="left">应用类型：</td>
          <td align="left"><asp:DropDownList ID="ddlAppType" AutoPostBack="true" OnSelectedIndexChanged="ddlAppType_SelectedIndexChanged" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">应用名称：</td>
          <td align="left"><asp:TextBox id="tbAppName" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbAppName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">应用访问地址：</td>
          <td align="left"><asp:TextBox id="tbUrl" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbUrl"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <span class="grey">应用的访问地址必须保持能访问状态，否则将导致系统功能异常</span></td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">应用 IP 地址：</td>
          <td align="left"><asp:TextBox id="tbIPAddress" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" runat="server"/>
            <span class="grey">如果应用无法通过域名访问，可以输入对应的IP 地址（可选）</span></td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">SSO通信密钥：</td>
          <td align="left"><asp:TextBox id="tbAuthKey" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbAuthKey"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <span class="grey">通信密钥用于在系统和SSO之间传输信息的加密，可包含任何字母及数字，请在系统与SSO中设置完全一样的密钥</span></td>
        </tr>
        <asp:PlaceHolder ID="phNotSiteServer" Visible="false" runat="server">
        <tr>
          <td width="120" height="25" align="left">应用接口文件路径：</td>
          <td align="left"><asp:TextBox id="tbAccessFileName" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbAccessFileName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <span class="grey">应用接口文件名称为通信使用的访问文件名</span></td>
        </tr>
        </asp:PlaceHolder>
        <tr>
          <td width="120" height="25" align="left">是否开启同步登录：</td>
          <td align="left"><asp:RadioButtonList ID="rblIsSyncLogin" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList>
            <span class="grey">开启同步登录后，当用户在登录其他应用时，同时也会登录该系统</span></td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">应用备注：</td>
          <td align="left"><asp:TextBox id="tbSummary" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Rows="3" Columns="45" runat="server"/></td>
        </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" />&nbsp;&nbsp;<input class="button" type="button" onClick="location.href='background_ssoApp.aspx';return false;" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
