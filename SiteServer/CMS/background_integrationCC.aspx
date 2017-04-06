<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundIntegrationCC" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">CC视频插件设置</div>
    <table width="95%" align="center" cellpadding="2" cellspacing="2">
      <tr>
        <td align="left" width="160"><bairong:help HelpText="选择是否启用CC视频插件" Text="是否启用CC视频插件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsIntegrationCC" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsIntegrationCC_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phIntegrationCC" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="输入您在CC视频联盟的ID" Text="您在CC视频联盟的注册ID：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="IntegrationCCID" runat="server"/>
            <asp:RequiredFieldValidator
                        ControlToValidate="IntegrationCCID"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
            <asp:RegularExpressionValidator
                        ControlToValidate="IntegrationCCID"
                        ValidationExpression="\d+"
                        Display="Dynamic"
                        ErrorMessage="*"
                        runat="server"/>
            (<a href="http://union.bokecc.com/signup.bo" style="color:#FF0000" target="_blank">还没有账号，点此注册</a>) </td>
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
