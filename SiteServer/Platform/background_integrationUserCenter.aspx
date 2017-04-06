<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundIntegrationUserCenter" %>
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
    <div class="columntitle"> 用户中心(UserCenter)设置</div>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td colspan="2"><div class="tips">在此设置用户中心访问方式及访问地址。</div></td>
      </tr>
      <tr>
        <td width="120" height="25" align="left">用户中心访问方式：</td>
        <td align="left"><asp:RadioButtonList ID="rblIsRemote" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblIsRemote_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phLocal" runat="server">
        <tr>
          <td width="120" height="25" align="left">用户中心文件夹名称：</td>
          <td align="left"><asp:TextBox id="tbDirectory" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbDirectory"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/><br />

            <span class="grey">设置用户中心(UserCenter)访问文件夹名称，此名称必须和系统根目录下的用户中心文件夹名称一致</span></td>
        </tr>
         </asp:PlaceHolder>
         <asp:PlaceHolder ID="phRemote" runat="server">
        <tr>
          <td width="120" height="25" align="left">远程用户中心地址：</td>
          <td align="left"><asp:TextBox id="tbUrl" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbUrl"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/><br />

            <span class="grey">远程用户中心的访问地址必须保持能访问状态，访问本地用户中心时系统将跳转至此地址</span></td>
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
