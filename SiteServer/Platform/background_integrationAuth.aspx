<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundIntegrationAuth" %>
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
    <div class="columntitle"> 第三方账号集成设置</div>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td colspan="2"><div class="tips">在此设置是否开启新浪微博及QQ等第三方平台账号。</div></td>
      </tr>
      <tr>
        <td width="150" height="25" align="left">是否开启QQ登录：</td>
        <td align="left"><asp:RadioButtonList ID="rblIsQQ" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblIsQQ_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phQQ" runat="server">
        <tr>
          <td width="150" height="25" align="left">QQ登录AppID：</td>
          <td align="left"><asp:TextBox id="tbQQAppID" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbQQAppID"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <br />
            <span class="grey">QQ开发平台申请的AppID，<a href="http://connect.qq.com/" target="_blank">点此申请</a>。</span></td>
        </tr>
        <tr>
          <td width="150" height="25" align="left">QQ登录AppKey：</td>
          <td align="left"><asp:TextBox id="tbQQAppKey" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbQQAppKey"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <br />
            <span class="grey">QQ开发平台申请的AppKey。</span></td>
        </tr>
      </asp:PlaceHolder>
      
      <tr>
        <td width="150" height="25" align="left">是否开启新浪微博登录：</td>
        <td align="left"><asp:RadioButtonList ID="rblIsWeibo" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblIsWeibo_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phWeibo" runat="server">
        <tr>
          <td width="150" height="25" align="left">新浪微博登录App Key：</td>
          <td align="left"><asp:TextBox id="tbWeiboAppKey" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbWeiboAppKey"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <br />
            <span class="grey">新浪微博开发平台申请的App Key，<a href="http://open.weibo.com/" target="_blank">点此申请</a>。</span></td>
        </tr>
        <tr>
          <td width="150" height="25" align="left">新浪微博登录App Secret：</td>
          <td align="left"><asp:TextBox id="tbWeiboAppSecret" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbWeiboAppSecret"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <br />
            <span class="grey">新浪微博开发平台申请的App Secret。</span></td>
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
