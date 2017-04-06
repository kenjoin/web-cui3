<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.BackgroundInputMailSMS" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="column">
    <div class="columntitle">邮件/短信发送设置</div>
    <br>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="155" align="left">提交表单名称：</td>
        <td align="left" width="260"><asp:Literal ID="ltlInputName" runat="server"></asp:Literal></td>
        <td align="left">&nbsp;</td>
      </tr>
      <tr>
        <td width="155" align="left"> 是否发送邮件： </td>
        <td align="left"><asp:RadioButtonList ID="rblIsMail" AutoPostBack="true" OnSelectedIndexChanged="rblIsMail_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="发送邮件" Value="True"></asp:ListItem>
            <asp:ListItem Text="不发送邮件" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left" class="gray">设置提交内容后是否需要发送邮件提醒</td>
      </tr>
      <asp:PlaceHolder ID="phMail" Visible="false" runat="server">
        <tr>
          <td width="155" align="left"> 邮件接收人： </td>
          <td align="left"><asp:RadioButtonList ID="rblMailReceiver" AutoPostBack="true" OnSelectedIndexChanged="rblMailReceiver_SelectedIndexChanged" runat="server">
              <asp:ListItem Text="指定邮箱" Value="True" Selected="true"></asp:ListItem>
              <asp:ListItem Text="表单提交者" Value="False"></asp:ListItem>
              <asp:ListItem Text="表单提交者及指定邮箱" Value="All"></asp:ListItem>
            </asp:RadioButtonList></td>
          <td align="left" class="gray">设置邮件提醒的收信人</td>
        </tr>
        <asp:PlaceHolder ID="phMailTo" runat="server">
          <tr>
            <td align="left"> 指定邮箱地址： </td>
            <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbMailTo" runat="server" /></td>
            <td align="left" class="gray">多个邮箱用";"分隔</td>
          </tr>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="phMailFiledName" runat="server">
          <tr>
            <td align="left"> 提交表单邮箱字段： </td>
            <td align="left"><asp:DropDownList ID="ddlMailFiledName" runat="server"></asp:DropDownList></td>
            <td align="left" class="gray">设置提交表单的邮箱字段，系统将向此字段的邮箱发送邮件</td>
          </tr>
        </asp:PlaceHolder>
        <tr>
          <td align="left"> 邮件标题： </td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbMailTitle" Text="邮件提醒" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="tbMailTitle" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
          <td align="left">&nbsp;</td>
        </tr>
        <tr>
          <td width="155" align="left">自定义邮件发送内容：</td>
          <td align="left"><asp:RadioButtonList ID="rblIsMailTemplate" AutoPostBack="true" OnSelectedIndexChanged="rblIsMailTemplate_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
              <asp:ListItem Text="自定义内容" Value="True"></asp:ListItem>
              <asp:ListItem Text="使用系统默认内容" Value="False" Selected="true"></asp:ListItem>
            </asp:RadioButtonList></td>
          <td align="left" class="gray">设置是否自定义邮件发送内容</td>
        </tr>
        <asp:PlaceHolder ID="phMailTemplate" Visible="false" runat="server">
          <tr>
            <td width="155" align="left">邮件发送内容：</td>
            <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="90%" TextMode="MultiLine" ID="tbMailContent" runat="server" Rows="10" Wrap="false" Text="" />
              <br>
              <span class="gray">（
              <asp:Literal ID="ltlTips1" runat="server"></asp:Literal>
              ）</span></td>
          </tr>
        </asp:PlaceHolder>
      </asp:PlaceHolder>
      <tr>
        <td colspan="3"><div style="border-bottom:dotted 1px"></div></td>
      </tr>
      <tr>
        <td width="155" align="left"> 是否发送短信： </td>
        <td align="left"><asp:RadioButtonList ID="rblIsSMS" AutoPostBack="true" OnSelectedIndexChanged="rblIsSMS_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="发送短信" Value="True"></asp:ListItem>
            <asp:ListItem Text="不发送短信" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left" class="gray">设置提交内容后是否需要发送短信提醒</td>
      </tr>
      <asp:PlaceHolder ID="phSMS" Visible="false" runat="server">
        <tr>
          <td width="155" align="left"> 短信接收人： </td>
          <td align="left"><asp:RadioButtonList ID="rblSMSReceiver" AutoPostBack="true" OnSelectedIndexChanged="rblSMSReceiver_SelectedIndexChanged" runat="server">
              <asp:ListItem Text="指定手机" Value="True" Selected="true"></asp:ListItem>
              <asp:ListItem Text="表单提交者" Value="False"></asp:ListItem>
              <asp:ListItem Text="表单提交者及指定手机" Value="All"></asp:ListItem>
            </asp:RadioButtonList></td>
          <td align="left" class="gray">设置短信提醒的收信人</td>
        </tr>
        <asp:PlaceHolder ID="phSMSTo" runat="server">
          <tr>
            <td align="left"> 指定手机号码： </td>
            <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbSMSTo" runat="server" /></td>
            <td align="left" class="gray">多个手机号码用";"分隔</td>
          </tr>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="phSMSFiledName" runat="server">
          <tr>
            <td align="left"> 提交表单手机字段： </td>
            <td align="left"><asp:DropDownList ID="ddlSMSFiledName" runat="server"></asp:DropDownList></td>
            <td align="left" class="gray">设置提交表单的手机字段，系统将向此字段的手机号码发送短信</td>
          </tr>
        </asp:PlaceHolder>
        <tr>
          <td width="155" align="left">自定义短信发送内容：</td>
          <td align="left"><asp:RadioButtonList ID="rblIsSMSTemplate" AutoPostBack="true" OnSelectedIndexChanged="rblIsSMSTemplate_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
              <asp:ListItem Text="自定义内容" Value="True"></asp:ListItem>
              <asp:ListItem Text="使用系统默认内容" Value="False" Selected="true"></asp:ListItem>
            </asp:RadioButtonList></td>
          <td align="left" class="gray">设置是否自定义短信发送内容</td>
        </tr>
        <asp:PlaceHolder ID="phSMSTemplate" Visible="false" runat="server">
          <tr>
            <td width="155" align="left">短信发送内容：</td>
            <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="90%" TextMode="MultiLine" ID="tbSMSContent" runat="server" Rows="10" Wrap="false" Text="" />
              <br>
              <span class="gray">（
              <asp:Literal ID="ltlTips2" runat="server"></asp:Literal>
              ）</span></td>
          </tr>
        </asp:PlaceHolder>
      </asp:PlaceHolder>
      <tr>
        <td colspan="3" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <input type=button class="button" onClick="location.href='background_input.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>